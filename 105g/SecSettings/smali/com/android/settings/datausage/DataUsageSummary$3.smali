.class Lcom/android/settings/datausage/DataUsageSummary$3;
.super Landroid/database/ContentObserver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings/datausage/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "udsState"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummary;->access$400(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummary;->access$400(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->close(Lcom/android/settings/datausage/DataUsageSummary;)V

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageSummary;->access$500(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const v3, 0x7f121a13

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/settings/datausage/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$3;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    const v3, 0x7f121a12

    goto :goto_0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
