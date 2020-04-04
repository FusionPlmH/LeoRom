.class Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "SecDreamSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecDreamSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DreamInfoPreference"
.end annotation


# instance fields
.field private final mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

.field private mLastPreference:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/samsung/android/settings/display/SecDreamSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings;Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-direct {p0, p2}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mLastPreference:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    const p1, 0x7f0d017d

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->setLayoutResource(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object p1, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object p1, p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->setSingleLineTitle(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;)Lcom/android/settingslib/dream/DreamBackend$DreamInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    return-object v0
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    new-instance v1, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$1;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/SecDreamSettings;->access$500(Lcom/samsung/android/settings/display/SecDreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v4, v4, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    const v4, 0x102001a

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    const/4 v5, 0x4

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    move v7, v6

    goto :goto_3

    :cond_3
    move v7, v5

    :goto_3
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v7, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVerticalScrollBarEnabled(Z)V

    new-instance v3, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$3;-><init>(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;)V

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/display/SecDreamSettings;->access$500(Lcom/samsung/android/settings/display/SecDreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    move v5, v6

    nop

    :cond_4
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    const v5, 0x7f0a026a

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mLastPreference:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public performClick()V
    .locals 5

    invoke-super {p0}, Landroid/support/v7/preference/SecPreference;->performClick()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-boolean v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/SecDreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/SecDreamSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    iget-object v4, v3, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iput-boolean v0, v4, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    invoke-virtual {v3}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->notifyChanged()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->access$500(Lcom/samsung/android/settings/display/SecDreamSettings;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mInfo:Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v1, v1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActiveDream(Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->notifyChanged()V

    return-void
.end method

.method public setLastPreference(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->mLastPreference:Ljava/lang/Boolean;

    return-void
.end method
