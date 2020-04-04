.class Lcom/samsung/android/settings/SecCmcModeEnabler$1;
.super Ljava/util/ArrayList;
.source "SecCmcModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SecCmcModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.samsung.android.dialer"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecCmcModeEnabler$1;->add(Ljava/lang/Object;)Z

    const-string v0, "com.skt.prod.dialer"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SecCmcModeEnabler$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
