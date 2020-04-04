.class public Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;
.super Ljava/lang/Object;
.source "NativeEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/vidsol/simgp/NativeEventListener$Event;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "simgp_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->nativeSetup(Ljava/lang/Object;)V

    return-void
.end method

.method private jsonToList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->jsonToList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private jsonToList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lorg/json/JSONArray;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/json/JSONArray;

    invoke-direct {p0, v3}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->jsonToList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private jsonToMap(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private jsonToMap(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lorg/json/JSONArray;

    invoke-direct {p0, v4}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->jsonToList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v3

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lorg/json/JSONObject;

    invoke-direct {p0, v4}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final native nativeFinalize()V
.end method

.method private final native nativeSetup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IILjava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "postEventFromNative: %d, %d, %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    invoke-virtual {v2, p1, p2, v4, v1}, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->mEventHandler:Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/media/vidsol/simgp/NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->release()V

    return-void
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/vidsol/simgp/NativeEventListener;->nativeFinalize()V

    return-void
.end method
