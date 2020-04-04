.class Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;
.super Ljava/lang/Object;
.source "AccessPointPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

.field final synthetic val$mTSWManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;->this$0:Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    iput-object p2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;->val$mTSWManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;->val$mTSWManager:Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;->this$0:Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/tencentwifisecurity/TencentSecurityWifiManager;->startWifiSecurityDetection(Landroid/content/Context;)V

    return-void
.end method
