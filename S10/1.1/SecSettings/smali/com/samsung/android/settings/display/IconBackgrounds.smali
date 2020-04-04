.class public Lcom/samsung/android/settings/display/IconBackgrounds;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "IconBackgrounds.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static sIconBackgrounds:I

.field private static sIconBackgroundsButton:I

.field private static sIconBackgroundsCancel:I

.field private static sIconBackgroundsDone:I


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDoneButton:Landroid/widget/Button;

.field private mIconBackgroundsLayout:Landroid/widget/LinearLayout;

.field private mIconBackgroundsRadio:Landroid/widget/RadioButton;

.field private mIconOnlyLayout:Landroid/widget/LinearLayout;

.field private mIconOnlyRadio:Landroid/widget/RadioButton;

.field private mIsEnabledShowBtnBg:Z

.field private mIsIconBackgrounds:Z

.field private mPreviewImage:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1072

    sput v0, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsCancel:I

    const/16 v0, 0x1088

    sput v0, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsDone:I

    const/16 v0, 0x1073

    sput v0, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsButton:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsEnabledShowBtnBg:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsIconBackgrounds:Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1071

    sput v0, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgrounds:I

    sget v0, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgrounds:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0158

    if-eq v0, v1, :cond_5

    const v1, 0x7f0a0282

    if-eq v0, v1, :cond_4

    const v1, 0x7f0a03c7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a03cf

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "IconBackgrounds"

    const-string v1, "onClick icon_only_layout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f0803d9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f0803db

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getMetricsCategory()I

    move-result v0

    sget v1, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsButton:I

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_2

    :cond_2
    const-string v0, "IconBackgrounds"

    const-string v1, "onClick icon_backgrounds_layout"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f0803d8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v1, 0x7f0803da

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getMetricsCategory()I

    move-result v0

    sget v1, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsButton:I

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_2

    :cond_4
    const-string v0, "IconBackgrounds"

    const-string v1, "onClick done_button"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->saveCurrentSetting()V

    goto :goto_2

    :cond_5
    const-string v0, "IconBackgrounds"

    const-string v1, "onClick cancel_button"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getMetricsCategory()I

    move-result v0

    sget v1, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsCancel:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->finish()V

    nop

    :goto_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "IconBackgrounds"

    const-string v1, "KKK onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mContext:Landroid/content/Context;

    const v0, 0x7f0d01bd

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_button_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsEnabledShowBtnBg:Z

    const v0, 0x7f0a04e9

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/view/View;->semSetRoundedCorners(I)V

    const v3, 0x7f0a03c7

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a03cf

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0a05f2

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v3, 0x7f0a03c8

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    const v3, 0x7f0a03d0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    const v3, 0x7f0a0158

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mCancelButton:Landroid/widget/Button;

    const v3, 0x7f0a0282

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/display/IconBackgrounds;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mDoneButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mCancelButton:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f1213c9

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/IconBackgrounds;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f12045e

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/IconBackgrounds;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mDoneButton:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f1213ca

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/display/IconBackgrounds;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/display/IconBackgrounds;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mCancelButton:Landroid/widget/Button;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mDoneButton:Landroid/widget/Button;

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "tap_to_icon"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v1

    nop

    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsIconBackgrounds:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsIconBackgrounds:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v2, 0x7f0803d8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v2, 0x7f0803da

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconOnlyRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v2, 0x7f0803d9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mPreviewImage:Landroid/widget/ImageView;

    const v2, 0x7f0803db

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public saveCurrentSetting()V
    .locals 5

    const-string v0, "IconBackgrounds"

    const-string v1, "saveCurrentSetting"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tap_to_icon"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tap_to_icon"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/IconBackgrounds;->mIsIconBackgrounds:Z

    if-eq v0, v2, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.settings.ICON_BACKGROUNDS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/settings/display/IconBackgrounds;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->finish()V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/IconBackgrounds;->getMetricsCategory()I

    move-result v1

    sget v2, Lcom/samsung/android/settings/display/IconBackgrounds;->sIconBackgroundsDone:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method
