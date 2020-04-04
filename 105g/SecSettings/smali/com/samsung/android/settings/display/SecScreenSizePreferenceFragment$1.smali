.class Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SecScreenSizePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.flipfolder.OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "SecScreenSizePreferenceFragment"

    const-string v2, "mFlipFolderStateReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "flipOpen"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$002(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;I)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$002(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;I)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$000(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus()I

    move-result v1

    if-ne v1, v3, :cond_2

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1;->this$0:Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;->access$100(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f12164e    # 1.941831E38f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1$1;-><init>(Lcom/samsung/android/settings/display/SecScreenSizePreferenceFragment$1;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    return-void
.end method
