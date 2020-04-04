.class Lcom/samsung/android/settings/deviceinfo/status/ImeiInformation$2;
.super Ljava/lang/Object;
.source "ImeiInformation.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/status/ImeiInformation;->setPreferenceValue(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/status/ImeiInformation;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/status/ImeiInformation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/status/ImeiInformation$2;->this$0:Lcom/samsung/android/settings/deviceinfo/status/ImeiInformation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "imei_barcode_value"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.deviceinfo.status.IMEIBarcodeDisplayActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/ImeiInformation$2;->this$0:Lcom/samsung/android/settings/deviceinfo/status/ImeiInformation;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/deviceinfo/status/ImeiInformation;->startActivity(Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1
.end method
