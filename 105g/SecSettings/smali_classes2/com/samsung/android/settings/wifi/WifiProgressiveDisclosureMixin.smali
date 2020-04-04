.class public Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;
.super Ljava/lang/Object;
.source "WifiProgressiveDisclosureMixin.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# static fields
.field private static DBG:Z


# instance fields
.field private final mCollapsedPrefs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

.field private mHiddenPrefs:I

.field private final mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mTileLimit:I

.field private mUserExpanded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mTileLimit:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mHiddenPrefs:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mContext:Landroid/content/Context;

    const v2, 0x7f13017d

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private getHiddenPreferenceSize()I
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    instance-of v3, v2, Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method


# virtual methods
.method addToCollapsedList(Landroid/support/v7/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    mul-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public collapse(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 6

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WifiProgressiveDisclosureMixin"

    const-string v2, "collapsed list should ALWAYS BE EMPTY before collapsing!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_0
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mTileLimit:I

    if-lt v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->addToCollapsedList(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string v3, "WifiProgressiveDisclosureMixin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mTileLimit:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->setOrder(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->updateDivider()V

    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "WifiProgressiveDisclosureMixin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expandable List limit "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mTileLimit:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Order "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public findPreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;
    .locals 4

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/Preference;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    instance-of v3, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v3, p2}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "WifiProgressiveDisclosureMixin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find preference with key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method getCollapsedPrefs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    return-object v0
.end method

.method public isCollapsed()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "state_user_expanded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    instance-of v0, p1, Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    const v2, 0x7f1212e6

    const v3, 0x7f1208ce

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x1

    :goto_0
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "WifiProgressiveDisclosureMixin"

    const-string v4, "open"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->spread()V

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mHiddenPrefs:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    goto :goto_1

    :cond_2
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiProgressiveDisclosureMixin"

    const-string v4, "close"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->collapse(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->getHiddenPreferenceSize()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mHiddenPrefs:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    xor-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mHiddenPrefs:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->setDividerState(Ljava/lang/Boolean;I)V

    :cond_4
    return v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "state_user_expanded"

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setTileLimit(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mTileLimit:I

    return-void
.end method

.method public spread()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mTileLimit:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mCollapsedPrefs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    iget v3, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mTileLimit:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->setOrder(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->updateDivider()V

    :cond_1
    return-void
.end method

.method public updateDivider()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->getHiddenPreferenceSize()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mHiddenPrefs:I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mExpandButton:Lcom/samsung/android/settings/wifi/WifiExpandPreference;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mUserExpanded:Z

    xor-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiProgressiveDisclosureMixin;->mHiddenPrefs:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiExpandPreference;->setOpenState(ZI)V

    return-void
.end method
