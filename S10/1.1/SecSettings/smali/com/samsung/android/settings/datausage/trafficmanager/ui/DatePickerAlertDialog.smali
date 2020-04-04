.class public Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;
.super Lcom/samsung/android/app/SemDatePickerDialog;
.source "DatePickerAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

.field private final mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;

.field mEndTime:J

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field mStartTime:J

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mToast:Landroid/widget/Toast;

.field private final mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

.field final themeContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;IIII)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemDatePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemDatePickerDialog$OnDateSetListener;III)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$2;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$3;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->initialize()V

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0160

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v4, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v4}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    const v4, 0x7f120512

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    const v4, 0x7f12050f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v2, 0x7f0a070d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/widget/SemDatePicker;

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2, p3, p4, p5, p0}, Lcom/samsung/android/widget/SemDatePicker;->init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mValidationCallback:Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemDatePicker;->setValidationCallback(Lcom/samsung/android/widget/SemDatePicker$ValidationCallback;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->initTab(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)Lcom/samsung/android/widget/SemDatePicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method private initTab(Landroid/view/View;)V
    .locals 6

    const v0, 0x7f0a033f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1207c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    const v2, 0x1020011

    invoke-virtual {v1, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1207c6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v4, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v2, v5}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method private initialize()V
    .locals 9

    const-string v0, "DatePickerAlertDialog"

    const-string v1, "initialize()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v4, 0x0

    const/16 v5, 0xb

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    const-string v4, "DatePickerAlertDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initialize(), the current time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v3, v4, v6}, Ljava/util/Calendar;->set(II)V

    const-string v6, "DatePickerAlertDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init end month:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "DatePickerAlertDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "init end day:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    return-void
.end method


# virtual methods
.method public getDatePicker()Lcom/samsung/android/widget/SemDatePicker;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemDatePicker;->clearFocus()V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    iget-wide v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    iget-wide v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog$OnDateSetListener;->onDateSet(Lcom/samsung/android/widget/SemDatePicker;JJ)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->cancel()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/app/SemDatePickerDialog;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mBtnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public onDateChanged(Lcom/samsung/android/widget/SemDatePicker;III)V
    .locals 10

    const-string v0, "DatePickerAlertDialog"

    const-string v1, "onDateChanged()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DatePickerAlertDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "year:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " month:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 v3, 0x5

    invoke-virtual {v0, v3, p4}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x0

    const/16 v5, 0xb

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xc

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xd

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    const/16 v5, 0xe

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1207c7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    if-eqz v7, :cond_0

    const-string v7, "DatePickerAlertDialog"

    const-string v8, "mTabHost is not null"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v6

    :cond_0
    const-string v7, "DatePickerAlertDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentTab is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v2, "DatePickerAlertDialog"

    const-string v3, "current time is start time"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    goto :goto_0

    :cond_1
    add-int/lit8 v7, p4, 0x1

    invoke-virtual {v0, v3, v7}, Ljava/util/Calendar;->set(II)V

    const-string v7, "DatePickerAlertDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current time is end time,  month:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DatePickerAlertDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "current time is end time, day:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    :goto_0
    iget-wide v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    iget-wide v7, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    cmp-long v2, v2, v7

    const/4 v3, -0x1

    if-ltz v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120817

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->themeContext:Landroid/content/Context;

    invoke-static {v2, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_4
    goto :goto_2

    :cond_5
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_6
    :goto_2
    const-string v1, "DatePickerAlertDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStartTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mStartTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mEndTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/samsung/android/app/SemDatePickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "month"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "day"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v3, v0, v1, v2, p0}, Lcom/samsung/android/widget/SemDatePicker;->init(IIILcom/samsung/android/widget/SemDatePicker$OnDateChangedListener;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/app/SemDatePickerDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "year"

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "month"

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "day"

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemDatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public updateDate(III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/DatePickerAlertDialog;->mDatePicker:Lcom/samsung/android/widget/SemDatePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/widget/SemDatePicker;->updateDate(III)V

    return-void
.end method
