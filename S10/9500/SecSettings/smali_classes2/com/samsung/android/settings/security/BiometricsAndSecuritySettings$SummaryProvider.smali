.class Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;
.super Ljava/lang/Object;
.source "BiometricsAndSecuritySettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final MAX_BIOMETRICS_SUMMARY_COUNT:I

.field private final MAX_SUMMARY_COUNT:I

.field biometricsCount:I

.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field summary:Ljava/lang/String;

.field summaryCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->MAX_BIOMETRICS_SUMMARY_COUNT:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->MAX_SUMMARY_COUNT:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->summaryCount:I

    iput v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->biometricsCount:I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->summary:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 5

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->summaryCount:I

    iput v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->biometricsCount:I

    new-instance v1, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;

    iget-object v2, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/security/FaceSettingsPreferenceController;->isAvailable()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v4, 0x7f1202b0

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->setSummary(Ljava/lang/String;Z)V

    :cond_0
    new-instance v1, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;

    iget-object v4, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/security/IrisSettingsPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v4, 0x7f120bd5

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->setSummary(Ljava/lang/String;Z)V

    :cond_1
    new-instance v1, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;

    iget-object v4, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/security/FingerprintSettingsPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v4, 0x7f1202b1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->setSummary(Ljava/lang/String;Z)V

    :cond_2
    new-instance v1, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;

    iget-object v4, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/security/BiometricsSecurityUpdatePreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v4, 0x7f1202fb

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->setSummary(Ljava/lang/String;Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportFindMyMobileFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f120993

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->setSummary(Ljava/lang/String;Z)V

    :cond_4
    new-instance v1, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;

    iget-object v2, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/security/SecureFolderSettingsPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f1216c4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->setSummary(Ljava/lang/String;Z)V

    :cond_5
    new-instance v1, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;

    iget-object v2, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/security/AppPermissionMonitorPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f120176

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->setSummary(Ljava/lang/String;Z)V

    :cond_6
    iget v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->summaryCount:I

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f121701

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->setSummary(Ljava/lang/String;Z)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->summary:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method

.method public setSummary(Ljava/lang/String;Z)V
    .locals 3

    iget v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->biometricsCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->summaryCount:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->summaryCount:I

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->summary:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->summaryCount:I

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f121112

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->summary:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getComma(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->summary:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->biometricsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->biometricsCount:I

    :cond_4
    iget v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->summaryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/security/BiometricsAndSecuritySettings$SummaryProvider;->summaryCount:I

    return-void
.end method
