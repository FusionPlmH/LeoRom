.class Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer$2;
.super Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback$Stub;
.source "VoiceGuideScriptPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;


# virtual methods
.method public onPlayCompleted()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer$2;->this$0:Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;

    invoke-static {v0}, Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;->access$100(Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;)Lcom/sec/android/app/vzwswlibrary/ui/IVoiceGuideScriptPlayerStates;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/vzwswlibrary/ui/IVoiceGuideScriptPlayerStates;->onScriptPlayCompleted()V

    return-void
.end method
