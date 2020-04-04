.class public Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;
.super Lcom/android/settingslib/CustomDialogPreference;
.source "AlertAtWarningPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# instance fields
.field private mChecked:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsSPR:Z

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

.field mTarget:Lcom/android/settings/datausage/DataUsageSummary;

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040239

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mIsSPR:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mIsSPR:Z

    :cond_0
    return-void
.end method

.method private setChecked(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mChecked:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->notifyChanged()V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference$1;-><init>(Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showDialog(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    const v0, 0x7f120644

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120643

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method private updateChecked()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    move-object v1, v0

    check-cast v1, Landroid/widget/Checkable;

    iget-boolean v2, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mChecked:Z

    invoke-interface {v1, v2}, Landroid/widget/Checkable;->setChecked(Z)V

    return-void
.end method

.method public onClick()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const-wide/32 v1, 0x77359400

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v4, "data_warning_threshold_bytes_long"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4, v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->setChecked(Z)V

    invoke-super {p0}, Lcom/android/settingslib/CustomDialogPreference;->onClick()V

    return-void
.end method

.method public onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->showDialog(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public performClick()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mChecked:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/settingslib/CustomDialogPreference;->performClick()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mTemplate:Landroid/net/NetworkTemplate;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public setTargetFragment(Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mTarget:Lcom/android/settings/datausage/DataUsageSummary;

    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mTemplate:Landroid/net/NetworkTemplate;

    iput-object p3, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, p3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/AlertAtWarningPreference;->updateChecked()V

    return-void
.end method
