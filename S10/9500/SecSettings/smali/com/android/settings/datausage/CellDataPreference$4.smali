.class Lcom/android/settings/datausage/CellDataPreference$4;
.super Ljava/lang/Object;
.source "CellDataPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/CellDataPreference;->showDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/CellDataPreference;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/CellDataPreference;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference$4;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    iput-object p2, p0, Lcom/android/settings/datausage/CellDataPreference$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_FEATURE_MOBILE_DATA_OFF_POPUP_DO_NOT_SHOW_AGAIN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference$4;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    invoke-virtual {v0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data_off_popup_show_again"

    iget-object v2, p0, Lcom/android/settings/datausage/CellDataPreference$4;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference$4;->this$0:Lcom/android/settings/datausage/CellDataPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/datausage/CellDataPreference;->access$500(Lcom/android/settings/datausage/CellDataPreference;Z)V

    return-void
.end method
