.class Lcom/android/settings/password/SetupChooseLockGenericForChina$1;
.super Ljava/lang/Object;
.source "SetupChooseLockGenericForChina.java"

# interfaces
.implements Lcom/sec/android/secsetupwizardlib/VI/VoiceGuideButton$OnVoiceGuideListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/SetupChooseLockGenericForChina;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/SetupChooseLockGenericForChina;


# direct methods
.method constructor <init>(Lcom/android/settings/password/SetupChooseLockGenericForChina;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/SetupChooseLockGenericForChina$1;->this$0:Lcom/android/settings/password/SetupChooseLockGenericForChina;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVoiceGuideButtonClicked(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockGenericForChina$1;->this$0:Lcom/android/settings/password/SetupChooseLockGenericForChina;

    const-string v1, "105_lockscreen_1_S"

    invoke-static {v0, v1}, Lcom/android/settings/password/SetupChooseLockGenericForChina;->access$000(Lcom/android/settings/password/SetupChooseLockGenericForChina;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onVoicePlayerConnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockGenericForChina$1;->this$0:Lcom/android/settings/password/SetupChooseLockGenericForChina;

    const-string v1, "105_lockscreen_1_S"

    invoke-static {v0, v1}, Lcom/android/settings/password/SetupChooseLockGenericForChina;->access$100(Lcom/android/settings/password/SetupChooseLockGenericForChina;Ljava/lang/String;)V

    return-void
.end method

.method public onVoicePlayerDisconnected()V
    .locals 0

    return-void
.end method
