.class Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$1;
.super Landroid/widget/ArrayAdapter;
.source "SecWifiSpinnerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->createAdapter()Landroid/widget/ArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$1;->this$0:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$1;->this$0:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->access$000(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)Landroid/app/UiModeManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$1;->this$0:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->access$000(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)Landroid/app/UiModeManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$1;->this$0:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->access$100(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne p1, v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/AppCompatCheckedTextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatCheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$1;->this$0:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->access$200(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0601c3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/AppCompatCheckedTextView;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference$1;->this$0:Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;->access$200(Lcom/samsung/android/settings/wifi/SecWifiSpinnerPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatCheckedTextView;->setTextColor(I)V

    :cond_0
    return-object v0
.end method
