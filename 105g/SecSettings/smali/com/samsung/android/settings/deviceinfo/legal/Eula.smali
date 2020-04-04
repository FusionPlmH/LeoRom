.class public Lcom/samsung/android/settings/deviceinfo/legal/Eula;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Eula.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsShowAAOnly:Z

.field private mLegalText:Ljava/lang/String;

.field private mLegalTextView:Landroid/widget/TextView;

.field private mLoadingDialog:Landroid/app/ProgressDialog;

.field private mhandlerLoading:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mLegalText:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mIsShowAAOnly:Z

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/legal/Eula$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/legal/Eula$1;-><init>(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mhandlerLoading:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/deviceinfo/legal/Eula;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mLoadingDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mLegalText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/settings/deviceinfo/legal/Eula;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mLegalText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mLegalTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mIsShowAAOnly:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mhandlerLoading:Landroid/os/Handler;

    return-object v0
.end method

.method private createThreadAndDialog()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mContext:Landroid/content/Context;

    const-string v1, ""

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1217e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mLoadingDialog:Landroid/app/ProgressDialog;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/legal/Eula$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/legal/Eula$2;-><init>(Lcom/samsung/android/settings/deviceinfo/legal/Eula;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Eula"

    const-string v1, "Eula onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "ShowAAOnly"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mIsShowAAOnly:Z

    :cond_0
    const-string v1, "Eula"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsShowAAOnly : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mIsShowAAOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0d018b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0463

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mLegalTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->createThreadAndDialog()V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mLoadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mLoadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->mLoadingDialog:Landroid/app/ProgressDialog;

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "Eula"

    const-string v1, "onOptionsItemSelected() up button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/Eula;->finish()V

    const/4 v0, 0x1

    return v0
.end method
