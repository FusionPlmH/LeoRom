.class public Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "AutoPowerOnOffDaysPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

.field private mDaysSelection:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;)Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    return-object v0
.end method

.method private showDialog()V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0d0176

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0477

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    new-instance v4, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;

    iget-object v5, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {v4, p0, v0, v5}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$1;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;Landroid/content/Context;Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    iput-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysSelection:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    iget-object v4, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysSelection:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f121386

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f1213f9

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f120475

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateSummary(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->showDialog()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    iget-object v1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysSelection:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;

    invoke-virtual {v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference$AutoPowerOnOffDaysSelection;->getDayOfWeek()Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->set(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->updateSummary(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    const-string v0, "AutoPowerOnOffDaysPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDaysOfWeek.getCoded() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDaysOfWeek(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->mDaysOfWeek:Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;->set(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffDaysPreference;->updateSummary(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffSettings$DaysOfWeek;)V

    return-void
.end method
