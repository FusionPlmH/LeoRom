.class public abstract Lcom/samsung/android/sepunion/SemPluginManagerLocal;
.super Ljava/lang/Object;
.source "SemPluginManagerLocal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addLedNotification(Landroid/os/Bundle;)V
.end method

.method public abstract disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
.end method

.method public abstract disableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract enableLcdOffByCover(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
.end method

.method public abstract executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract getCoverState()Lcom/samsung/android/cover/CoverState;
.end method

.method public abstract getCoverStateForExternal()Lcom/samsung/android/cover/CoverState;
.end method

.method public abstract getCoverSwitchState()Z
.end method

.method public abstract getVersion()I
.end method

.method public abstract isCoverManagerDisabled()Z
.end method

.method public abstract onCoverAppCovered(Z)I
.end method

.method public abstract readTouchChannelCountForExternal()Landroid/graphics/Point;
.end method

.method public abstract registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
.end method

.method public abstract registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
.end method

.method public abstract registerListenerCallbackForExternal(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
.end method

.method public abstract registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
.end method

.method public abstract removeLedNotification(Landroid/os/Bundle;)V
.end method

.method public abstract requestCoverAuthentication(Landroid/os/IBinder;Landroid/content/ComponentName;)Z
.end method

.method public abstract sendDataToCover(I[B)V
.end method

.method public abstract sendDataToNfcLedCover(I[B)V
.end method

.method public abstract sendPowerKeyToCover()V
.end method

.method public abstract sendSystemEvent(Landroid/os/Bundle;)V
.end method

.method public abstract sendTouchRegionForExternal([BII)V
.end method

.method public abstract setCoverPackage(Ljava/lang/String;)V
.end method

.method public abstract setFotaInProgress(ZLandroid/os/IBinder;Landroid/content/ComponentName;)Z
.end method

.method public abstract unregisterCallback(Landroid/os/IBinder;)Z
.end method

.method public abstract unregisterCallbackForExternal(Landroid/os/IBinder;)Z
.end method

.method public abstract unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
.end method
