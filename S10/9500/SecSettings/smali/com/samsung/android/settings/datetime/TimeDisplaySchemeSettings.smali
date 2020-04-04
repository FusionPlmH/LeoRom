.class public Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;
.super Landroid/app/DialogFragment;
.source "TimeDisplaySchemeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBeijingTime:Landroid/widget/RadioButton;

.field private mLocalTime:Landroid/widget/RadioButton;

.field private mTimeType:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mTimeType:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mTimeType:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->setTimeDisplayScheme(I)V

    return-void
.end method

.method private getTimeDisplayScheme()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "time_display_scheme"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    const-string v0, "TimeDisplaySchemeSettings"

    const-string v1, "initView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a00d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mBeijingTime:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mBeijingTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0482

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mLocalTime:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mLocalTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->setTimeDisplaySchemeInit()V

    return-void
.end method

.method public static newInstance(I)Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;
    .locals 3

    new-instance v0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;

    invoke-direct {v0}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setTimeDisplayScheme(I)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_display_scheme"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "time_display_scheme"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method private setTimeDisplaySchemeInit()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->getTimeDisplayScheme()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mTimeType:I

    iget v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mTimeType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mBeijingTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mLocalTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0a0482

    if-eq v0, v2, :cond_0

    iput v1, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mTimeType:I

    iget-object v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mLocalTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mTimeType:I

    iget-object v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mBeijingTime:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0270

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->initView(Landroid/view/View;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings$1;-><init>(Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;)V

    const v3, 0x7f12076a

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120764

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/datetime/TimeDisplaySchemeSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "TimeDisplaySchemeSettings"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    return-void
.end method
