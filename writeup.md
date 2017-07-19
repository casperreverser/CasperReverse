# Casper API Reverse Engineering

# Table of Contents
* [Background](#background)
* [Package Capture](#where-to-start)
* [Java Decompiling](#now-what)
  * [Security Methods](#now-what)
  * [Supporting Methods](#whats-the-use)
* [Native Methods](#but-what-about-the-native-methods)
  * [getSecretKey](#getsecretkey)
  * [getVerificationToken](#getverificationtoken)
    * [sub_9B0](#sub_9b0)
    * [sub_740](#sub_740)
    * [sub_CA0](#sub_ca0)
    * [sub_13C0](#sub_13c0)
    * [Back to Sanity](#back-to-getverificationtoken)
* [Duplicating the Signing](#tying-it-all-together)


# Some Background

If you don't care about this and just want to get to the reversing click [here](#where-to-start).

Snapchat is one of the most popular social media platforms available right now. Until a few years ago, their private API was also one of the least secure. It was trivial to reverse engineer and there were several people who did it successfully, most notably tlack with [SnapHax](https://github.com/tlack/snaphax). Snapchat initially retaliated with legal action, [threatening ](https://news.ycombinator.com/item?id=6083812) to sue tlack for his usage of the API (under [DMCA 1201](https://www.law.cornell.edu/uscode/text/17/1201)). It appears nothing ever came of the lawsuit, but Snapchat did eventually update their security. 

After Snapchat's security update their API apparently became much more difficult to reverse. The number of working 3rd party apps plumetted due to their increased security. In May of 2015 the first version of [Casper](https://casper.io) was released. This gave a new option to those who were frustrated with the standard Snapchat client and wanted more features. The developer of Casper, [Liam Cottle](liamcottle.com) decided to keep his findings about the reversing of Snapchat to himself. Considering Snapchat's past reactions to 3rd party applications this is reasonable. 

Liam implemented his API by creating a service which generated request tokens for his users to authenticate their requests with Snapchat. Liam's service utilized its own authentication system to verify that the users of his service were valid and from Casper. Liam's authentication was significantly weaker than that which Snapchat had implemented and was quickly broken, giving developers full programmatic access to Snapchat once again, albeit through Liam's service. 

After multiple different projects started using Casper for their own means, Liam decided that an increase in security was called for. In a swift movement Liam added a verification token and signature to all of the incoming Casper requests. This stopped most of the applications which had gained access to Liam's service. Shortly after increasing his security Liam added an option for API access to his Snapchat authentication service. The pricing structure of this API is listed below and on his [developers page](http://developers.casper.io/pricing.php):

Price/Month|Rate Limit
-----------|----------
$100 | 100/Hour
$250 | 250/Hour
$500 | 500/Hour
$1000 | Unlimited/Hour 

These prices seem outrageous! For a small development team, or someone who just wants to test out his service they're likely out of reach. In comparision, Bing's search API only charges $40/Month for 20,000 queries per month with users having <5,000 queries cost $0.00/Month. Liam does state on his pricing page that he intends to add per-username access to make development and small single user applications more affordable, but this option has been "Coming Soon" for more than a year.

The Casper app produced by Liam still provides its users with free access to his API, so there must be some means to reverse engineer this and gain access for another app. 

# Where to Start?  
As with most any network API, the first step is to monitor network traffic. So using Burp Suite I started up the proxy and installed its CA cert onto my Android phone, then just started using Casper. Here is a sample login request to Casper (with username/password and API Key changed)

Login Request
```HTTP
POST /snapchat/ios/login HTTP/1.1
Accept-Language: en
Accept-Locale: en_US
User-Agent: Casper/1.5.6.5 (KFFOWI; Android 5.1.1#4744c7a3d9#22; 160dpi; 600x976)
X-Casper-API-Key: 2f31354db61e4554b536f1f886d6c437
X-Casper-Device: 16d75a0f-8ffe-4b3f-a24f-447e51128810
X-Casper-Device-Info: eyJhY2giOiI0YTc3MmZiMWFhOGI1ZGNkM2YxNzY0N2NiMzhhNmQ0ZWEyNjk3YTUyIiwiYWlkIjoiNmNiZDQyOTY4NzAxN2RiNiIsImJyYW5kIjoiZ29vZ2xlIiwiY3B1X2FiaSI6ImFybWVhYmktdjdhIiwiY3B1X2FiaTIiOiJhcm1lYWJpIiwiZGloIjoiNWhYamdGdy12V01iejZVNFhWdzdLNVFJdVFldUs5d1JzRHJ3a1lvZTh2VVx1MDAzZCIsImdpZCI6IjQxMjI0NzMyMDcyMTIzNDU2MDciLCJoYXNfbGliaG91ZGluaSI6ZmFsc2UsImhhc19yb290Ijp0cnVlLCJpc19lbXUiOmZhbHNlLCJtb2RlbCI6IktGRk9XSSJ9
X-Casper-Private-Token: v1:34379f44e8ffcce0a5af60882ed8b15e:feb3efbeb5abe8c129d9abd0ff8f62243034fa4cc022937f2d05f8777c134d12
X-Casper-Signature: v1:6494f8952d80ed4a17f2d441fbf2441d953f5e164274dde01695dc3fd1df535d
X-Casper-Timestamp: 1485664772002
Content-Type: application/x-www-form-urlencoded
Content-Length: 369
Host: fast-refuge-6073.herokuapp.com
Connection: close

casper_version=1.5.6.5&dtoken1i=00001:/qPsGpVZS7yq0yEjJ3zQ7jtjUTG49BYR4xI6D3u%2B3ROfx%2B1Gtfa3OGmKe6DNryUf&dtoken1v=4NetoKrYCwOeKwBGGwQJOfNq3mMWs0nM5HWr3NKZPIw%3D&password=myPassword&snapchat_user_agent=Snapchat/9.45.0.1%20(KFFOWI;%20Android%205.1.1%234744c7a3d9%2322;%20gzip)&snapchat_version=9.45.0.1&timestamp=1485664771992&username=myUsername&using_root_login=false
```

Login Response
```HTTP
HTTP/1.1 200 OK
Connection: close
Date: Sun, 29 Jan 2017 04:39:37 GMT
Server: Apache
Access-Control-Allow-Origin: *
X-Reverse-Engineer-Message: Usernames that use this API without permission will be lifetime banned.
X-Casper-Message: Built with love by Liam Cottle
X-Message-To-Snapchat: Capricorn is pretty cool
X-Message-To-Google: DroidGuard4Life
X-Powered-By: Electricity
Content-Type: application/json
Via: 1.1 vegur
Content-Length: 1561

{"code":200,"endpoint":"https://app.snapchat.com/loq/login","headers":{"Accept":"*/*","Accept-Language":"en;q=1","Accept-Locale":"en_US","User-Agent":"Snapchat/9.45.0.1 (iPhone6,2; iOS 9.3.3; gzip)","X-Snapchat-Client-Auth-Token":"v6:D72FC9D3C6DD8DBB6A7C8F90:BC4D4CFDFE208485A1EBBAE5DFB3C5D011118DB2D262E32C7992AA71FD80316B9BB4215B5BEA7653B3AC3D00FF77CBE0645EF64797654872E89F8E94E171505B7AEE2D4087D4093E12E020A26B93A44BB2B662B595575F245147E29C424C4409C2A3AF3538F109D3E22B51AEB1EDD14D5FA573FBEE4324EA8AFAF6C85D10E0773EC0CAE245C19393E0393F4FA0BE1BF5CA3008273198F1DA9409658568763A6C917E961466E8B2A6990C7214EB89","X-Snapchat-Client-Token":"v6:174ED4418F5221D3FE3D157D:DD8E31C58EC983E84A2C1F0C8344EC6FC2021B165355C7CB04DCC92A9A262057E05632893F4759B9242CE01DB35062D0C1D94076442BBC52A0C4AB80ADC7763E3CA4B35116A313BA4C8FD586B48185F8DF6C7E7EF3EC308C41526F457C5C3F3E5F8E68F4351D2948469A2DEA31378E6852F6A54B1C41B19ECA8622740B0073AFDA9AB39B","X-Snapchat-UUID":"DD19438B-D1A6-4CCA-8127-1B3E6B4E3E9D"},"params":{"confirm_reactivation":"false","dsig":"5ccec7e36ad818eb0700","dtoken1i":"00001:/qPsGpVZS7yq0yEjJ3zQ7jtjUTG49BYR4xI6D3u+3ROfx+1Gtfa3OGmKe6DNryUf","from_deeplink":"false","height":"960","password":"myPassword","pre_auth_token":"","remember_device":"true","req_token":"6de3910f4c107794412e8b277205150e26ccf17fe00c50d061efcd40e52842b5","screen_height_in":"2.9","screen_height_px":"480","screen_width_in":"1.9","screen_width_px":"320","timestamp":"1485664777726","username":"myUsername","width":"640"},"settings":{"force_clear_headers":true,"force_clear_params":true}}
```


As you can see, this request goes to Liam's server and returns a JSON which contains the headers and parameters to send to Snapchat's servers to perform a login. Each time this request is performed the `X-Casper-Timestamp`, `X-Casper-Signature`, and `X-Casper-Private-Token` headers change value. The timestamp header is obvious, but the other two are more interesting. As you continue to navigate through the app, there are several other requests performed, but only one other seems to relate to Snapchat `/ios/snapchat/endpointauth`, the rest seem to be Casper internal. This request also contains the verification headers. Simply trying to re-submit these requests with a different username/password fails and Liam's server threatens to have your account "permenantly banned".

# Now What?
Since simply inspecting the network traffic doesn't yield any obvious ways around the verification, the next step must be to decompile his APK. So hop on over to [casper.io](https://casper.io) and download it. Then extract the files from it (APKs are just ZIPs) and you'll get a file called `classes.dex`. This is how Android stores its Java class files. The best tool for accessing these is [dex2jar](https://github.com/pxb1988/dex2jar) by pxb1988. Running `d2j-dex2jar.sh classes.dex` will give you a file called `classes-dex2jar.jar` which can be opened by a standard Java decompiler, my personal choice is [jd-gui](http://jd.benow.ca/). 

At a glance it's clear to see that nearly all of the files within the `io.casper.android` package are obfuscated, this complicates things a little bit. However, with a little more investigation it's clear there are a few exceptions to this rule, most notably `io.casper.android.security.Security`. This class has several obfuscated methods within it which make calls to the 2 native methods included. These native methods are `String getSecretKey()` and `String getVerificationToken(Context, String)`. Well that's certaintly  something interesting! 

The 2 methods which call them are `String a(TreeMap<String, String>)` which calls `getSecretKey` and `String a(Context, String, String, TreeMap<String,String>)` which calls both `getVerificationToken` and `getSecretKey`. I'll refer to these methods as `makeSecret` and `makeVerification`, respectively. 

Reading through `makeSecret` makes it fairly clear what it does. Here is `makeSecret` reproduced and what it does

### Original
```java
  public static String a(TreeMap<String, String> paramTreeMap)
  {
    Object localObject1 = paramTreeMap.entrySet().iterator();
    for (paramTreeMap = ""; ((Iterator)localObject1).hasNext(); paramTreeMap = paramTreeMap + (String)((Map.Entry)localObject2).getKey() + (String)((Map.Entry)localObject2).getValue()) {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
    }
    Object localObject2 = a();
    localObject1 = CryptoUtil.getMac("HmacSHA256");
    if ((localObject2 != null) && (localObject1 != null)) {}
    for (;;)
    {
      try
      {
        ((Mac)localObject1).init((Key)localObject2);
        localObject2 = new java/lang/StringBuilder;
        ((StringBuilder)localObject2).<init>();
        paramTreeMap = "v1:" + CryptoUtil.bytesToHex(((Mac)localObject1).doFinal(paramTreeMap.getBytes("UTF-8")));
        return paramTreeMap;
      }
      catch (Throwable paramTreeMap)
      {
        Crashlytics.logException(paramTreeMap);
      }
      paramTreeMap = "ie";
    }
  }
``` 
### Rewritten
```java 
    public static String makeSecret(TreeMap<String, String> map)
    {
        String entries="";
        for(Map.Entry<String,String> e: map.entrySet()){
            //append all the entries in the map into a long string
            entries+= e.getKey() + e.getValue();
        }
        //from the method `SecretKeySpec a()`
        SecretKeySpec key = new javax.crypto.spec.SecretKeySpec(getSecretKey().getBytes("utf-8"), "HmacSHA256");
        //from the method `io.casper.android.util.CryptoUtil.getMac(String)`
        Mac m = Mac.getInstance("HmacSHA256");
        m.init(key);
        //bytesToHex is a simple helper method which converts a byte[] to a string of hex digits
        String ret = "v1:" + bytesToHex(m.doFinal(entries.getBytes("UTF-8")));
        return ret;
    }
```

The most interesting part of this to me is the String `"v1:"`. This is part of the headers which are sent to Casper in requests! This method is clearly somehow related to the verification headers.

Looking at the other method makes some more things clear 
### Original
```java
  public static String a(Context paramContext, String paramString1, String paramString2, TreeMap<String, String> paramTreeMap)
  {
    paramTreeMap = paramTreeMap.entrySet().iterator();
    while (paramTreeMap.hasNext())
    {
      localObject = (Map.Entry)paramTreeMap.next();
      paramString1 = paramString1 + (String)((Map.Entry)localObject).getKey() + (String)((Map.Entry)localObject).getValue();
    }
    Object localObject = a();
    paramTreeMap = CryptoUtil.getMac("HmacSHA256");
    if ((localObject != null) && (paramTreeMap != null)) {}
    for (;;)
    {
      try
      {
        paramContext = getVerificationToken(paramContext, paramString2);
        paramTreeMap.init((Key)localObject);
        paramString2 = new java/lang/StringBuilder;
        paramString2.<init>();
        paramContext = "v1:" + paramContext + ":" + CryptoUtil.bytesToHex(paramTreeMap.doFinal(paramString1.getBytes("UTF-8")));
        return paramContext;
      }
      catch (Throwable paramContext)
      {
        Crashlytics.logException(paramContext);
      }
      paramContext = "ie";
    }
  }
```
### Rewritten
```java
    public static String makeVerification(Context context, String s1, String s2, TreeMap<String,String> map)
    {
        String entries = s1;
        for(Map.Entry<String,String> e: map.entrySet()){
            //append all the entries in the map into a long string
            entries += e.getKey() + e.getValue();
        }           
        //from the method `SecretKeySpec a()`
        SecretKeySpec key = new javax.crypto.spec.SecretKeySpec(getSecretKey().getBytes("utf-8"), "HmacSHA256");
        //from CryptoUtil
        Mac m = Mac.getInstance("HmacSHA256");
        String verificationToken = getVerificationToken(context, s2);
        m.init(key);
        String ret = "v1:" + verificationToken + ":" + bytesToHex(m.doFinal(entries.getBytes("UTF-8")));
        return ret;
    }
```

This method has a very similar structure to `makeSecret`! The only differences are the inclusion of the `verificationToken` and the addition of `s1` to the front of `entries`. It also identifes the other verification header! Since this method uses `"v1:"` as well, but it also includes a second `":"` within the string. This must be the method to get the `X-Casper-Signature` header and the other must get the `X-Casper-Private-Token` header! From now on I'll call `makeSecret` `getSignature()` and `makeVerification` `getPrivateToken`.

# What's the use?
So we have these native methods, but we don't know what arguments are passed to them or what the `getSecretKey` or `getVerificationToken` methods actually do. The next step is to see where the `Security.a` methods are called from in case that provides some more details about the mystery parameters. Thankfully, the `Security` class is only referenced in one other class `io.casper.c.b.a.a.a`. With some investigation into this class it can be seen that it helps handle Requests to the Casper API (based on the import of `okhttp` and the string `"User-Agent"`). 

Reading through this class, the method `f()` seems to be the one calling the Security methods. In a stroke of luck, jd-gui was able to identify these parameters' values and provide information about them. Here is the code from the class

```java
    b("X-Casper-Timestamp", this.mRequestTimestamp);
    b("X-Casper-Signature", Security.a(this.mParams));
    b("X-Casper-Private-Token", Security.a(this.mContext, a(), this.mRequestTimestamp, this.mParams));
```

The method `b(String, String)` seems to add headers to the request. The first line simply adds the timestamp request header. Line 2 calls `getSignature` from above and passes it the map `mParams` (more on this map later). Line 3 calls `getPrivateToken(context, a(), timestamp, mParams)`.

The `mParams` object is a `TreeMap<String,String>`. If we click on it in jd-gui, it takes us to the definition, which lies in the super class `c.c.f.c`. This super class appears to handle all requests which the Casper app makes to any service. The `mParams` object is modified by the method `c.c.f.c.a(String, String)` which is simply a call to `mParams.put(String,String)`. Looking at how `mParams` is used within the `c` class it seems that `mParams` entries are being passed to the method `okhttp.FormEncodingBuilder.add(String,String)`. Looking at the [documentation](https://square.github.io/okhttp/2.x/okhttp/com/squareup/okhttp/FormEncodingBuilder.html) for this method it becomes clear that `mParams` is simply the form parameters passed to the POST.

The other unknown parameter to `getPrivateToken` is the call to `a()`. Within the `c.b.a.a.a` class the method `a()` is declared as `public abstract String a();`, so we need to find an implementation of this method to divine its purpose. Another feature of jd-gui comes in handy here: the `Type Hierarchy` tool. This tool (accessed by `Navigation > Open Type Hierarchy`) provides an easy to browse listing of the classes and their structure, centered on the currently open class. 

Opening it from `c.b.a.a.a` shows there are many subclasses. Opening several at random shows several implementations for `String a()`, all of them just look similar to this
```java
public String a()
{
    return "/snapchat/ios/endpointauth";
}
```
So the method `String a()` simply returns the path of the HTTP request.

Now that we have all of the parameters for these method calls, their signatures become even clearer:
```java
//This method signs a request using the key from `getSecretKey`
String getSignature(TreeMap<String,String> formParameters);
```
```java
//This method produces a private token using the key from `getSecretKey` and a token generated by `getVerificationToken`
String getPrivateToken(Context context, String path, String timestamp, TreeMap<String,String> formParameters);
```

# But what about the native methods?
//TODO Consider a part 2... this is already long

With the full knowledge of how the two `Security` methods are called, the only thing remaining is the function of the native methods `getSecretKey` and `getVerificationToken`. These methods are frontends for native library methods which lie within the library `security`. Within the extracted APK there are several files within the path `/lib/`. I chose to use the one in `x86` for decompiling.

This native library was built using the Java Native Interface or [JNI](https://en.wikipedia.org/wiki/Java_Native_Interface). This allows Java programs to access native functions and communicate on a lower-level with the actual system (instead of the JVM). 

Whenever I'm tasked with decompiling a native program my first pass is almost always with the program `strings`. It parses a binary file for data which is in the ASCII range and prints out the strings it has found that are greater than a given length (default 4bytes). `strings` can also be run with the parmeter `-t x` which outputs the hex address of the string.  Running `strings` on `libsecurity.so` gives a rather long list, but there are a few particularly interesting entries 

Address | String
--------|-------
15c8 | c789742f186a167dd73e59b1ce3d4873 <-- modified for privacy
15e9 | %s\|%s\|%s
15f2 | io/casper/android/util/CryptoUtil
1614 | getMD5Hash
169e | getPackageName

The first entry definitely looks like some sort of key, maybe this is what is returned by `getSecretKey`. The second entry seems to be a format string for `printf` or `sprintf` (since it's unlikely this is printing to a console. The last 3 entries are results of the JNI integration: `CryptoUtil` is a class in casper and `getMD5Hash` is one of its methods, `getPackageName` is an Android method which simply returns the name of the package of the APK. 

So now with some possible leads from `strings` we can start in on the decompile. There are several great tools that could be used to decompile this, but by far the most powerful is [IDA](https://www.hex-rays.com/index.shtml). The license for IDA runs about $500, but Hex-Rays offers a very full featured [freeware version](https://www.hex-rays.com/products/ida/support/download_freeware.shtml) and a [demo version](https://www.hex-rays.com/products/ida/support/download_demo.shtml). Either free download will be sufficient for decompiling this library. 

## getSecretKey
Here is the disassembly of [`getSecretKey`](https://github.com/casperreverser/CasperReverse/blob/master/disassembly.asm#L2)

Opening `libsecurity.so` in IDA presents us with a somewhat intimidating interface, but with a little use it becomes pretty intuitive. In the Functions window it lists several standard library functions, several unnamed subroutines, and 2 functions with very familiar names `Java_io_casper_android_security_Security_getSecretKey` and `Java_io_casper_io_android_security_Security_getVerificationToken`. Double-clicking on one of these will navigate us to it within the decompiled view. You can find the full decompiled program [here](https://www.github.com/casperreverser/CasperReverse/disassembly.asm) if you want to follow along.

It's not exactly clear by just glancing at this code what is happening, but it does clearly involve the key which was found in `strings`. One could probably guess what it's doing, but the only way to be 100% sure is to step through it. 

So, before we begin, I should note some things about JNI. A sample JNI program in `C` could look like this (from [Wikipedia](https://en.wikipedia.org/wiki/Java_Native_Interface#HelloWorld))

`HelloWorld.h`
```C
/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class HelloWorld */

#ifndef _Included_HelloWorld
#define _Included_HelloWorld
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     HelloWorld
 * Method:    print
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_HelloWorld_print
  (JNIEnv *, jobject);

#ifdef __cplusplus
}
#endif
#endif
```

`libHelloWorld.c`
```C
#include <stdio.h>
#include "HelloWorld.h"

JNIEXPORT void JNICALL
Java_HelloWorld_print(JNIEnv *env, jobject obj)
{
     printf("Hello World!\n");
     return;
}
```

This simple program is fairly easy to understand at a glance. The way JNI works is by passing a pointer to  the `JNIEnv` struct and a `jobject` representing the calling object. Any other parameters will follow these and will be represented either by a JNI type (jobject, jarray) or by a primitive. This struct contains numerous functions which allow the native program to interface with the JVM. These functions are detailed by [Oracle](http://docs.oracle.com/javase/7/docs/technotes/guides/jni/spec/functions.html). If the native application wanted to do something like create a Java String the following code could be used

```C
const char* s = "hello world";
jstring js = env -> NewStringUTF(env, s);

```

So, returning to the `libsecurity` decompile, we find there are 2 arguments passed to `getSecretKey` (despite it having none in Java). These 2 arguments are represented in IDA by `arg_0` and `arg_4`. The are on the stack at the start of the function call, but are moved to the registers `edx` and `ecx` respectively.
```Assembly
mov ecx, [ebp+arg_4] ;jobject (Security)
mov edx, [ebp+arg_0] ;JNIEnv
```
These two arguments must be the pointer to the `JNIEnv` struct and the `jobject` of `io.casper.android.Security`. Within IDA, these can be renamed by right-clicking on them and selecting "Rename". This makes it easier to follow the data's flow.

After the parameters have been copied into registers, a few addresses of strings are moved into registers as well. 
```Assembly
lea esi, [ebp+dest]
lea edi, [eax-1a10] ; "c789742f186a167dd73e59b1ce3d4873" ;This line modified for privacy
mov ebx, 21h
```
This moves 2 pointers into the registers `esi` and `edi`. `esi` contains a pointer to something IDA is calling `dest` and `edi` contains a pointer to the string we found earlier. This also moves `21h` (or 33) into `ebx`. It just so happens that the string pointed to by `edi` has 33 characters in it. It would appear that this code is getting ready to move or copy the string into `dest`.

The addresses (and therefore values) of these strings can be found by looking a little higher, and doing a little math. At the top of the function there are several lines which add a seemingly arbitrary value to `eax`
```Assembly
0x4d9    call $+5        ;put the next function's address on the stack
0x4de    pop eax         ;pop that address into eax
0x4df    add eax, 2AFAh  ;add the offset to the strings table to eax
```
These 3 lines set eax up so that it can be used to reference into the table of strings (in .rodata). Now whenever the program wants to access the address of one of those strings, it need only subtract an offset. Above, the offset used was `1a10h`, so to get to the string, we add the address in `eax` with the constant `2AFAh` and subtract `1a10h`. This gives `4de + 2afa - 1a10 = 15c8`. Looking at 15C8 in the disassembly, shows which string it corresponds to!

Right after this, the registers containing `JNIEnv` and `jobject` are copied to local variables for some more permanent storage than the registers. 
```Assembly
mov [ebp+var_10], edx ;JNIEnv
mov [ebp+var_14], ecx ;jobject
```
Once again, these two variables can be renamed to make it easier to follow their flow through the function.

The next few lines copy the `dest`, string, and length onto the stack, preparing for a method call
```Assembly
mov ecx, esi
mov [esp], ecx      ;destination
mov [esp+4], edi    ;source
mov [esp+8], 21h    ;length
```
The next 3 lines aren't actually important to the execution of the funcion, so I'll ignore them (plus I'm not entirely sure why they're there). Following that is a call to the standard library function `memcpy` using the parameters we just put on the stack

Then the `dest` pointer is copied to local memory (now containing the key)
```Assembly
mov [ebp+var_44], esi
```

After the call to memcpy, there is some fancy movement with `eax`, eventually preparing for `call eax`
```Assembly
mov eax, [ebp+JNIEnv] ;Copy the address of JNIEnv* to eax
mov eax, [eax]        ;Copy the address of JNIEnv to eax (dereference the pointer)
mov eax, [eax+29Ch]   ;Copy the value at (JNIEnv + 29Ch) to eax
```
There's a decent amount of stuff going on here, but it's actually pretty simple (and a construct we'll see a lot). These instructions just dereference an element of JNIEnv struct. In C this could just look like `eax = JNIEnv[0x29C];` (more or less). 

So what is at 29C in JNIEnv? At first this seems like it's impossible to identify, but thankfully, in the documentation for JNI, oracle provides the "Index ... in the JNIEnv interface function table". So if we take 29C and convert it to decimal we get 668. Since `JNIEnv` contains only functions, we can divide 668 by the width of a function pointer (4 in a 32-bit system) to get the index of the function. So we end up with 167. Looking 167 up in the JNI docs shows that it corresponds to the function `jstring NewStringUTF(JNIEnv* env, const char* bytes);`. So the next few instructions should put the `JNIEnv` pointer and a string pointer onto the stack in order to prepare for the method call.
```Assembly
mov ecx, [ebp+JNIEnv]
mov [esp], ecx
mov ecx, [ebp+var_44] ; dest
mov [esp+4], ecx
; Irrelevant line
call eax
```

So this calls the function `NewStringUTF(env, dest)`, making a new `jstring` from the dest string. This `jstring` contains the key we originally found by running `strings`. This string is stored in `eax` (since that's where returns go). This is the last significant line in the function, so the value in `eax` is just returned to the caller!

In other words `getSecretKey` just returns the string `c789742f186a167dd73e59b1ce3d4873`!

## getVerificationToken
Here is the disassembly of [`getVerificationToken`](https://github.com/casperreverser/CasperReverse/blob/master/disassembly.asm#L68)

I guess it could be said I've saved the best for last... this one is a doozy, but once you break it down it's not too bad at all. I've linked to the dumped assembly of `getVerificationToken`, it might help to glance at it quickly.

Those reading closely will notice that this calls several subroutines in its execution, making this function even more complex than it looks at first. But trust me, it all breaks down fairly cleanly. 

In order to understand this function on the whole, you'll need to understand these subroutines, so that's where we'll start.

### sub_9B0
Here is the disassembly of [`sub_9B0`](https://github.com/casperreverser/CasperReverse/blob/master/disassembly.asm#L495)

So there's quite a lot here, but it actually breaks down fairly easily. At a glance you may notice there are a lot of structures which look like the JNI calls from above. The good news about this is we know it's fairly easy to deconstruct these JNI calls by using the index in their function table.

So starting from the top, we know that the arguments passed to 9B0 were the `JNIEnv` and the `Context`. This begins by copying 3 strings into local variables. For brevity, I'm going to write these in C instead of the assembly.
```C
char* var_6f, var_49, var_37;
memcpy(var_6f,"()Landroid/content/pm/PackageManager;",0x26);
memcpy(var_49,"getPackageManager", 0x12);
memcpy(var_37,"android/content/ContextWrapper", 0x1f);
```
So this simply collects several strings from memory and copies them locally. Right after this a JNI function call is performed using JNI function 6 or [`FindClass`](http://docs.oracle.com/javase/7/docs/technotes/guides/jni/spec/functions.html#wp16027). The call receives the string `var_37`, so this call reads as `jclass conWrap = JNIEnv -> FindClass(JNIEnv, "android/content/ContextWrapper")`. Right after this call to `FindClass` another call is performed to `GetMethodID` using the class we just found `jmethodID getPackManager = JNIEnv -> GetMethodID(JNIEnv, conWrap, "getPackageManager", "()Landroid/content/pm/PackageManager;")`. 

After this call, there is some quick error handling which checks if the result is non-zero, in C this reads
```C
if(getPackManager == 0){
    return 0;
}
```
After this there is yet another JNI call, this one to `CallObjectMethod`. `jobject packageManager = JNIEnv -> CallObjectMethod(JNIEnv, context, getPackManager)`. There is more error handling, then some more strings are loaded from memory. Note: getPackageName is directly copied in assembly instead of using memcpy
```C
char* var_a0, var_8b;
memcpy(var_a0, "()Ljava/lang/String;", 0x15);
memcpy(var_8b, "getPackageName", 0xf);
```
After the strings are copied, there is yet another JNI call, another one to `GetMethodID` giving `jmethodID getPackname = JNIEnv -> GetMethodID(JNIEnv, "android/content/ContextWrapper", "()Ljava/lang/String;", "getPackageName")`. After a litter more error handling, theres another call to `CallObjectMethod`. `jobject packageName = JNIEnv -> CallObjectMethod(JNIEnv, context, getPackName)`. After this call there is a small section which returns `packageName`.

If `sub_9B0` were rewritten in C it would look like this
```C
void* sub_9B0(JNIEnv* env, jobject context){
    jclass contextWrapperClass = env -> FindClass(env, "android/content/ContextWrapper");
    jmethodID getPackManId = env -> GetMethodID(env, contextWrapperClass, "getPackageManager", "()Landroid/content/pm/PackageManager");
    if(!getPackManId){
        return 0;
    }
    jobject packageManager = env -> CallObjectMethod(env, context, getPackManId);
    if(!packageManager){
        return 0;
    }

    jmethodID getPackNameId = env -> GetMethodID(env, contextWrapperClass, "getPackageName", "()Ljava/lang/String");
    jobject packageName = env -> CallObjectMethod(env, context, getPackNameId); 
    return packageName;
}
```

In otherwords, this entire block of assembly just calls `context.getPackageName()`! `sub_9B0` can simply be defined as `jString getPackageName(JNIEnv* env, Context context)`.


### sub_740
Here is the disassembly of [`sub_740`](https://github.com/casperreverser/CasperReverse/blob/master/disassembly.asm#L276)

As with `sub_9B0` this function looks daunting, but it breaks down easily as well. I'm simply going to re-write it in C for brevity.
```C
void* sub_740(JNIEnv* env, jobject s){
    jstring utf8 = env -> NewStringUTF(env, "utf-8");
    jclass stringClass = env -> FindClass(env, "java/lang/String");
    jmethodID getBytesId = env -> GetMethodID(env, stringClass, "getBytes", "(Ljava/lang/String;)[B");
    jobject java_bytes = env -> CallObjectMethod(env, s, getBytesId, utf8);

    int length = env -> GetArrayLength(env, java_bytes);
    jbyte* native_bytes = env -> GetByteArrayElements(env, java_bytes);
    if(length <= 0){
        return 0;
    }
    char* bytes = (char*)malloc(length + 1);
    memcpy(bytes, native_bytes, length);
    //add a null-terminator
    bytes[length] = 0;

    //0 is a constant for the mode
    env -> ReleaseByteArrayElements(env, native_bytes, 0);

    return bytes;
}
```

So `sub_740` is actually defined as something like `char* getBytes(JNIEnv* env, jString s)`

### sub_CA0
Here is the disassembly of [`sub_CA0`](https://github.com/casperreverser/CasperReverse/blob/master/disassembly.asm#L716)

Only 2 more functions to go! 
```C
void* sub_ca0(JNIEnv* env, jobject context){
    jclass contextWrapClass = env -> FindClass(env, "android/content/ContextWrapper");
    jmethodID getPackManID = env -> GetMethodId(env, contextWrapClass, "getPackageManager", "()Landroid/content/pm/PackageManager");
    if(!getPackManID){
        return 0;
    }
    jobject packageManager = env -> CallObjectMethod(env, context, getPackManID)
    if(!packMan){
        return 0;
    }
    jmethodID getPackNameId = env -> GetMethodId(env, contextWrapClass, "getPackageName", "()Ljava/lang/String;");
    if(!getPackNameId){
        return 0;
    }
    jobject packageName = env -> CallObjectMethod(env, context, getPackNameId);


    jclass packageManagerClass = env -> getObjectClass(env, packageManager);
    jmethodID getPackInfoID = env -> GetMethodId(env, packageManagerClass, "getPackageInfo", "(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;");

    //the 64 is a constant of the PackageInfo class
    //PackageInfo.GET_SIGNATURES 
    //https://developer.android.com/reference/android/content/pm/PackageManager.html#GET_SIGNATURES
    jobject packageInfo = env -> CallObjectMethod(env, packageManager, getPackInfoID, packageName, 64);

    jclass packageInfoClass = env -> GetObjectClass(env, packageInfo);
    jfieldID signaturesId = env -> GetFieldID(env, packageInfoClass, "signatures", "[Landroid/content/pm/Signature;");
    jobject signatures = env -> GetObjectField(env, packageInfo, signaturesId);
    jobject signature = GetObjectArrayElement(env, signatures, 0);

    jclass signatureClass = env -> GetObjectClass(env, signature);
    jmethodID toCharsID = env -> GetMethodId(env, signatureClass, "toCharsString", "()Ljava/lang/String;");
    if(!toCharsID){
        return 0;
    }
    jobject signatureString = env -> CallObjectMethod(env, signature, toCharsID);
    return signatureString;
}
```

So `sub_CA0` returns the android package's signature. Its signature could be rewritten as `jstring getSignature(env, context)`.


### sub_13C0
Here is the disassembly for [`sub_13C0`](https://github.com/casperreverser/CasperReverse/blob/master/disassembly.asm#L1208)

Alright, last one, it's not too bad. Once again, I'll just rewrite it in C
```C
void * sub_13c0(JNIEnv* env, char* s){
    jclass cryptoUtilClass = env -> FindClass(env, "io/casper/android/util/CryptoUtil");
    jmethodID getMD5ID = env -> GetStaticMethodId(env, cryptoUtilClass, "getMD5Hash", "(Ljava/lang/String;)Ljava/lang/String;");
    if(!getMD5ID){
        return 0;
    }
    jstring s_jstring = env -> NewStringUTF(env, s);
    jstring md5 = env -> CallStaticObjectMethod(env, cryptoUtilClass, getMD5ID, s_jstring);
    if(!md5){
        return 0;
    }
    char* md5Bytes = getBytes(env, md5);
    return md5Bytes;
}
```
So this function simply calculates the md5 of the string passed. It's signature would be `char* getMD5(JNIEnv* env, char* s);`

### Back to getVerificationToken
Here is the disassembly of [`getVerificationToken`](https://github.com/casperreverser/CasperReverse/blob/master/disassembly.asm#L68)

Now that we have the subroutines translated into C we can start workign on `getVerificationToken`. I've included a table of the subroutines to their C signatures

Subroutine Name | Signature in C
---------------|-------------
`sub_9B0`|`jstring getPackageName(JNIEnv* env, jobject context)`
`sub_740`|`char* getBytes(JNIEnv* env, jstring str)`
`sub_CA0`|`jstring getSignature(JNIEnv* env, jobject context)`
`sub_13C0`|`char* getMD5(JNIEnv* env, char* str)`

Now that we have those, I'll translate the whole of `getVerificationToken` into C for easy readability

```C
char* getVerificationToken(JNIEnv* env, jobject this_Security, jobject context, jstring timestamp_s){
    jstring packageName_s = getPackageName(env, context);
    char* packageName = getBytes(env, packageName_s);

    jstring signature_s = getSignature(env, context);
    char* signature = getBytes(env, signature_s);
    char* timestamp = getBytes(env, timestamp_s);

    char* signature_md5 = getMD5(env, signature);

    size_t l_packageName = strlen(packageName);
    size_t l_signature_md5 = strlen(signature_md5);
    size_t l_timestamp = strlen(timestamp);

    char* res = (char*) malloc(l_packageName + l_signature_md5+l_timestamp+3);
    sprintf(res, "%s|%s|%s", packageName, signature_md5, timestamp);
    char* res_md5 = getMD5(env, res);

    jstring result = env -> NewStringUTF(env, res_md5);
    return result;
}
```

So this function simply collects data from the subroutines, combines it all together, and then returns the md5 of the combination. 

But what are the values for `getPackageName` and `getSignature`? `getPackageName` is simple, it just returns `io.casper.android`. `getSignature` is a bit more complex. Every application on an android device has a unique signature. This signature can be obtained by following the calls listed within `sub_CA0` for any package.

# Tying it all Together
So what exactly is the flow of this verification? 

Let's say I want to make a login request to the Casper API. I need to gather several parameters to send in my request.

Parameter Name|Value|Notes
--------------|-----|-----
casper_version|1.5.6.5 | Whatever is the current version number
password|myPassword| Your password
snapchat_user_agent|Snapchat/9.45.0.1 (KFFOWI; Android 5.1.1#4744c7a3d9# 22; gzip)| Whatever android useragent you want to use. Also replace with the correct snapchat version
snapchat_version|9.45.0.1 | whatever is the current version number
timestamp|1485664771992 | the current epoch time
username |myUsername| Your username
using_root_login|false|

This parameter list must be alphabetized as that's how Casper's API expects it. 

Once the parameter list has been built, you must generate your `X-Casper-Private-Token` and `X-Casper-Signature`. This is done by re-creating the `getSignature` and `getPrivateToken` methods written earlier. The calls to `getSecretKey` and `getVerificationToken` must be rewritten as well. 

Once you have these headers, you should modify the others (`X-Casper-Device`, `X-Casper-Device-Info`, `X-Casper-Timestamp`) to suit your request. Finally, you can URL encode the form parameters, and send the request with the Headers to the Casper endpoint. If everything worked you should get a `200` response.

Something to note: in this writeup I changed the values in some of the strings. It is up to you to find these on your own, I will not provide them to anyone under any circumstances. Additionally, I did not detail how to get the signature of Casper, this is also a task left to the reader, all should be fairly easy to accomplish with a little thought.

I'll answer general questions about this reversing at TODO get email address. Thanks for reading through!
