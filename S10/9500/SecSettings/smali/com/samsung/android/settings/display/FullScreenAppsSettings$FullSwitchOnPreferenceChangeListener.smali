.class Lcom/samsung/android/settings/display/FullScreenAppsSettings$FullSwitchOnPreferenceChangeListener;
.super Ljava/lang/Object;
.source "FullScreenAppsSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/FullScreenAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullSwitchOnPreferenceChangeListener"
.end annotation


# instance fields
.field private row:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

.field final synthetic this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$FullSwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$FullSwitchOnPreferenceChangeListener;->row:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$FullSwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$FullSwitchOnPreferenceChangeListener;->row:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    iget-object v2, v2, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$FullSwitchOnPreferenceChangeListener;->row:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    iget v3, v3, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mUid:I

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$2000(Lcom/samsung/android/settings/display/FullScreenAppsSettings;Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$FullSwitchOnPreferenceChangeListener;->this$0:Lcom/samsung/android/settings/display/FullScreenAppsSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FullScreenAppsSettings;->access$1400(Lcom/samsung/android/settings/display/FullScreenAppsSettings;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/FullScreenAppsSettings$FullSwitchOnPreferenceChangeListener;->row:Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;

    iget-object v2, v2, Lcom/samsung/android/settings/display/FullScreenAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/display/FullScreenAppSwitchPreference;->setChecked(Z)V

    :cond_0
    const/4 v2, 0x1

    return v2
.end method
