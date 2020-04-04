.class public Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "KnoxFingerprintPlusMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintPreference"
.end annotation


# instance fields
.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101008e

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->mView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference$1;-><init>(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-void
.end method
