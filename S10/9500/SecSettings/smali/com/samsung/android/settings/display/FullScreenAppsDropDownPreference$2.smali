.class Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference$2;
.super Ljava/lang/Object;
.source "FullScreenAppsDropDownPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->access$000(Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->access$000(Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference$2;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;->access$102(Lcom/samsung/android/settings/display/FullScreenAppsDropDownPreference;Z)Z

    return v1
.end method