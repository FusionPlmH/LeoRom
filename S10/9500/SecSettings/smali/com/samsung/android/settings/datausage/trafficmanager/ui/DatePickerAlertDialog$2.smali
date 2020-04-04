.class Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;
.super Ljava/lang/Object;
.source "DatePickerAlertDialog.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->access$100(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1207b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DatePickerAlertDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTabChanged, currentTab is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x5

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)Lcom/samsung/android/widget/SemDatePicker;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/widget/SemDatePicker;->setMinDate(J)V

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-wide v3, v3, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v6, v5, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->updateDate(III)V

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)Lcom/samsung/android/widget/SemDatePicker;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/widget/SemDatePicker;->setMinDate(J)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->access$000(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)Lcom/samsung/android/widget/SemDatePicker;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-wide v3, v3, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/widget/SemDatePicker;->setMinDate(J)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-wide v2, v2, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-wide v8, v4, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-wide v3, v3, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v3, v7, v8}, Ljava/util/Calendar;->set(II)V

    const-string v8, "DatePickerAlertDialog"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "c.get(Calendar.MONTH):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "c.get(Calendar.DAY_OF_MONTH):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v8, v6, v5, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->updateDate(III)V

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    iget-wide v3, v3, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v6, v5, v7}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->updateDate(III)V

    :goto_0
    return-void
.end method
