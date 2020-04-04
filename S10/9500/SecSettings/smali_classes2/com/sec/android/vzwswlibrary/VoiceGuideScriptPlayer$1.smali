.class Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer$1;
.super Ljava/lang/Object;
.source "VoiceGuideScriptPlayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer$1;->this$0:Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;

    invoke-static {p2}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;->access$002(Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    iget-object v0, p0, Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer$1;->this$0:Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;

    invoke-static {v0}, Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;->access$100(Lcom/sec/android/vzwswlibrary/VoiceGuideScriptPlayer;)Lcom/sec/android/app/vzwswlibrary/ui/IVoiceGuideScriptPlayerStates;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/vzwswlibrary/ui/IVoiceGuideScriptPlayerStates;->onScriptPlayerServiceConnected()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
