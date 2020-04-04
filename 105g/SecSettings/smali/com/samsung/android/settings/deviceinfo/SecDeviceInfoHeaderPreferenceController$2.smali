.class Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController$2;
.super Landroid/database/ContentObserver;
.source "SecDeviceInfoHeaderPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->access$200(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController$2;->this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->access$300(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
