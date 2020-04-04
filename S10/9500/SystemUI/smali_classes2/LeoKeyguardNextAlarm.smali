.class public Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;
.super Lcom/android/systemui/widget/SystemUITextView;
.source "LeoKeyguardNextAlarm.java"

# interfaces
.implements Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;


# instance fields
.field mContext:Landroid/content/Context;

.field mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 8

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->checkSettingsAndUpdate()V

    new-instance v0, Lcom/fusionleo/LeoProvider/LeoObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, p0}, Lcom/fusionleo/LeoProvider/LeoObserver;-><init>(Landroid/os/Handler;Lcom/fusionleo/LeoProvider/LeoObserver$ObListener;)V

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/fusionleo/LeoProvider/LeoManages;->KeyguardAlarm:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    invoke-static {v6}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getLeoUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v1, v7, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public checkSettingsAndUpdate()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "next_alarm_formatted"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "string"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "servicebox_alarm_no_alarm"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->setText(I)V

    goto :goto_1

    :cond_0
    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardAlarmcapEnr:I

    if-ne v2, v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->mResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "servicebox_alarm_next"

    invoke-virtual {v4, v6, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ic_alarm"

    invoke-static {v2, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getCustomDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-boolean v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardAlarmIcon:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2, v4, v4, v4}, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->setCompoundDrawablePadding(I)V

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardAlarmSize:I

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->setTextSize(F)V

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardAlarmColorEnr:I

    if-ne v3, v1, :cond_4

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardAlarmColor:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->setLeoCustomColor(I)V

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardAlarmIconColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->setLeoRemoveCustomColor()V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->mContext:Landroid/content/Context;

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardAlarmColorFont:I

    const/4 v4, 0x0

    const-string v5, "sec-roboto-condensed"

    invoke-static {v1, v3, v5, v4}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoFonts(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->setTypeface(Landroid/graphics/Typeface;)V

    sget-boolean v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardAlarm:Z

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    const/16 v4, 0x8

    :goto_4
    invoke-virtual {p0, v4}, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->setVisibility(I)V

    return-void
.end method

.method public onLeoChange(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/fusionleo/LeoProvider/LeoManages;->KeyguardAlarm:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/fusionleo/LeoKeyguardNextAlarm;->checkSettingsAndUpdate()V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
