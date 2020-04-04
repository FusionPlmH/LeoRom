.class Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;
.super Ljava/lang/Object;
.source "SecDreamSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

.field final synthetic val$holder:Landroid/support/v7/preference/PreferenceViewHolder;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->val$holder:Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->this$0:Lcom/samsung/android/settings/display/SecDreamSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b03e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDreamSettings;->access$702(I)I

    invoke-static {}, Lcom/samsung/android/settings/display/SecDreamSettings;->access$700()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->val$holder:Landroid/support/v7/preference/PreferenceViewHolder;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference$2;->this$1:Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecDreamSettings$DreamInfoPreference;->performClick()V

    return-void
.end method
