.class public Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;
.super Landroid/widget/LinearLayout;
.source "SecZenScheduleRepeatPreference.java"


# instance fields
.field private mRepeatButton:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->init()V

    return-void
.end method


# virtual methods
.method public getRepeatButtonHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRepeatButtonWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-virtual {v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->getWidth()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 1

    const v0, 0x7f0a01ef

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    return-void
.end method

.method public initRepeatButton([I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->initRepeatBtn([I)V

    return-void
.end method

.method public setEnabledButton(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->setEnabledBtn(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setRepeatListener(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$RepeatListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->setOnRepeatClickListener(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton$RepeatListener;)V

    return-void
.end method
