.class public Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;
.super Landroid/widget/LinearLayout;
.source "SecZenScheduleRepeatPreference.java"


# instance fields
.field private mRepeatButton:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d02eb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->addView(Landroid/view/View;)V

    const v1, 0x7f0a01ec

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    iput-object v1, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    const v1, 0x7f0a0274

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference$1;-><init>(Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

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

.method public initRepeatButton([I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->mRepeatButton:Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatButton;->initRepeatBtn([I)V

    return-void
.end method

.method public setEnabledButton(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenScheduleRepeatPreference;->mView:Landroid/view/View;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

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
