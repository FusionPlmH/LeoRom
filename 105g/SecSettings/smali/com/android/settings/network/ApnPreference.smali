.class public Lcom/android/settings/network/ApnPreference;
.super Landroid/support/v7/preference/Preference;
.source "ApnPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static mCurrentChecked:Landroid/widget/CompoundButton;

.field static mSelectedKey:Ljava/lang/String;


# instance fields
.field private isSprHidden:Z

.field private isVzwEditable:Z

.field private mDisableall:Z

.field private mEditable:Z

.field private mEnabled:Z

.field private mProtectFromCheckedChange:Z

.field private mSelectable:Z

.field private mSimSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->isSprHidden:Z

    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->isVzwEditable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput p3, p0, Lcom/android/settings/network/ApnPreference;->mSimSlot:I

    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create ApnPreference temp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/network/ApnPreference;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->isSprHidden:Z

    iput-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->isVzwEditable:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    iput-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->isSprHidden:Z

    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->isVzwEditable:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->isSprHidden:Z

    iput-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->isVzwEditable:Z

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040030

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/network/ApnPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->isSprHidden:Z

    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->isVzwEditable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    iput-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->mEditable:Z

    iput-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->mEnabled:Z

    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->isSprHidden:Z

    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->isVzwEditable:Z

    iput v0, p0, Lcom/android/settings/network/ApnPreference;->mSimSlot:I

    const v1, 0x7f0d0014

    invoke-virtual {p0, v1}, Lcom/android/settings/network/ApnPreference;->setLayoutResource(I)V

    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->isSprHidden:Z

    iput-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->isVzwEditable:Z

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0084

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/RadioButton;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/RadioButton;

    iget-boolean v2, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sput-object v1, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/network/ApnPreference;->mEnabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    :cond_2
    const v1, 0x7f0a0852

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/network/ApnPreference;->mProtectFromCheckedChange:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    sget-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "old checked preference set to false mCurrentChecked isCheck : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "ApnPreference"

    const-string v1, "old check information that mCurrentChecked is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sput-object p1, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/ApnPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    if-eqz p1, :cond_7

    const v0, 0x7f0a0852

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ApnPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEditable in onClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/network/ApnPreference;->mEditable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lcom/android/settings/network/ApnPreference;->mEditable:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "kddi_cpa_added"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    move v4, v5

    if-eqz v4, :cond_2

    const-string v5, "Manual"

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Manual_for_Navi"

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    int-to-long v6, v1

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.settings.CPA_EDIT"

    invoke-direct {v5, v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v3, v5

    :cond_2
    iget-boolean v4, p0, Lcom/android/settings/network/ApnPreference;->isSprHidden:Z

    if-eqz v4, :cond_3

    const-string v4, "keyString"

    const-string v5, "hidden"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_3
    iget-boolean v4, p0, Lcom/android/settings/network/ApnPreference;->isVzwEditable:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "vzw"

    const-string v5, "editable"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isMultisimModel()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "simSlot"

    iget v5, p0, Lcom/android/settings/network/ApnPreference;->mSimSlot:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSprModel()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/settings/network/ApnPreference;->isSprHidden:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/settings/network/ApnPreference;->mDisableall:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "sprdisable"

    const-string/jumbo v5, "yes"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_6
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_7
    return-void
.end method

.method public setChecked()V
    .locals 3

    const-string v0, "ApnPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked() => getKey(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/network/ApnPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    return-void
.end method

.method public setDisableEidtDeleteForSPR(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mDisableall:Z

    return-void
.end method

.method public setEditable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mEditable:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mEnabled:Z

    return-void
.end method

.method public setNullPreferAPN()V
    .locals 2

    const-string v0, "ApnPreference"

    const-string v1, "no prefer set!: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mCurrentChecked:Landroid/widget/CompoundButton;

    sput-object v0, Lcom/android/settings/network/ApnPreference;->mSelectedKey:Ljava/lang/String;

    return-void
.end method

.method public setSelectable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/network/ApnPreference;->mSelectable:Z

    return-void
.end method
