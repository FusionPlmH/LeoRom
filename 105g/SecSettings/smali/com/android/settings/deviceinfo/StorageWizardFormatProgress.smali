.class public Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;
.super Lcom/android/settings/deviceinfo/StorageWizardBase;
.source "StorageWizardFormatProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$SilentObserver;,
        Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;
    }
.end annotation


# instance fields
.field private mFormatPrivate:Z

.field private mFromFactoryReset:Z

.field private mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageWizardBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x6f

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/deviceinfo/StorageWizardBase;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mDisk:Landroid/os/storage/DiskInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0d0364

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setContentView(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setKeepScreenOn(Z)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "from_factory_reset"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFromFactoryReset:Z

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "format_private"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFormatPrivate:Z

    const v2, 0x7f1219a6

    new-array v4, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getDiskShortDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setHeaderTextNoCaretStr(I[Ljava/lang/CharSequence;)V

    const v2, 0x7f1219a5

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getDiskDescription()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->setBodyTextNoCaretStr(I[Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;->setActivity(Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;)V

    :goto_0
    return-void
.end method

.method public onFormatFinished()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "format_slow"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFromFactoryReset:Z

    if-eqz v1, :cond_0

    const-string v1, "from_factory_reset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x6f

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    :goto_0
    return-void
.end method

.method public onFormatFinishedSlow()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/deviceinfo/StorageWizardFormatSlow;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "format_slow"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mFromFactoryReset:Z

    if-eqz v1, :cond_0

    const-string v1, "from_factory_reset"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x6f

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->finishAffinity()V

    :goto_0
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;->mTask:Lcom/android/settings/deviceinfo/StorageWizardFormatProgress$PartitionTask;

    return-object v0
.end method
