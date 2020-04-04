.class public Landroid/support/v7/preference/SecPreferenceScreen;
.super Landroid/support/v7/preference/PreferenceGroup;
.source "SecPreferenceScreen.java"


# instance fields
.field private mIsSummaryColorPrimaryDark:Z

.field private mShouldUseGeneratedIds:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f0401a2

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/preference/SecPreferenceScreen;->mShouldUseGeneratedIds:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/preference/SecPreferenceScreen;->mIsSummaryColorPrimaryDark:Z

    return-void
.end method


# virtual methods
.method protected isOnSameScreenAsChildren()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/preference/SecPreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/preference/SecPreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/preference/SecPreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p0}, Landroid/support/v7/preference/SecPreferenceScreen;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroid/support/v7/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public semSetSummaryColorToColorPrimaryDark(Z)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v7/preference/SecPreferenceUtils;->applySummaryColor(Landroid/support/v7/preference/Preference;Z)V

    return-void
.end method
