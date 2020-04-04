.class Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$4;
.super Ljava/lang/Object;
.source "FingerprintSettingsMultiSelect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$300()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$400(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v0, v2}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$200(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$400(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$300()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$500(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$600(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;

    invoke-static {v3}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$700(Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettingsMultiSelect;->access$302(I)I

    :cond_3
    return-void
.end method
