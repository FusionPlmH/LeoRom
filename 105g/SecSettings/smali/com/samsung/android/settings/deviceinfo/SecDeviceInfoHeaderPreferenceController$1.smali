.class Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController$1;
.super Ljava/lang/Object;
.source "SecDeviceInfoHeaderPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->createDeviceInfoHeader()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->access$000(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;->access$100(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeaderPreferenceController;)V

    return-void
.end method
