.class Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$2;
.super Ljava/lang/Object;
.source "SecWifiSpinnerPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$2;->this$0:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$2;->this$0:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->access$300(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)I

    move-result v0

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$2;->this$0:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-static {v0, p3}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->access$302(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$2;->this$0:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$2;->this$0:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->access$500(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->access$402(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$2;->this$0:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->access$600(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$2;->this$0:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->access$600(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/samsung/android/settings/wifi/details/WifiSpinnerCallback;->userSelectSpinnerItem(I)V

    :cond_1
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
