.class public Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FingerprintPreference"
.end annotation


# instance fields
.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008e

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method


# virtual methods
.method public getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101030e

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method
