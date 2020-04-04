.class Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$2;
.super Ljava/lang/Object;
.source "VoiceGuideButton.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;


# direct methods
.method constructor <init>(Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$2;->this$0:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "VoiceGuideButton"

    const-string v1, "Connected to ISuwScriptPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$2;->this$0:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    invoke-static {p2}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;->access$302(Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$2;->this$0:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;->access$402(Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;Z)Z

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$2;->this$0:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    invoke-static {v0}, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;->access$200(Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;)Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$OnVoiceGuideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$2;->this$0:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    invoke-static {v0}, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;->access$200(Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;)Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$OnVoiceGuideListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$OnVoiceGuideListener;->onVoicePlayerConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "VoiceGuideButton"

    const-string v1, "Disconnected from ISuwScriptPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$2;->this$0:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;->access$402(Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;Z)Z

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$2;->this$0:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    invoke-static {v0}, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;->access$200(Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;)Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$OnVoiceGuideListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$2;->this$0:Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;

    invoke-static {v0}, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;->access$200(Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton;)Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$OnVoiceGuideListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$OnVoiceGuideListener;->onVoicePlayerDisconnected()V

    :cond_0
    return-void
.end method
