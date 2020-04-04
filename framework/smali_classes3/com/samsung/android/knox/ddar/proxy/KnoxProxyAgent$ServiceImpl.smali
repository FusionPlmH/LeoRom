.class final Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent$ServiceImpl;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyAgent$Stub;
.source "KnoxProxyAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent$ServiceImpl;->this$0:Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;

    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent$ServiceImpl;-><init>(Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;)V

    return-void
.end method


# virtual methods
.method public onMessage(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent$ServiceImpl;->this$0:Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
