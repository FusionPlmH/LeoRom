.class Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$5;
.super Ljava/lang/Object;
.source "SecVolumeLimiterSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->showSetPasswordDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$5;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$5;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    sget-object v1, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->ConfirmWrong:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$5;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    sget-object v1, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;->NeedToConfirm:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    iput-object v1, v0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->mUiStage:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$Stage;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$5;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$400(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
