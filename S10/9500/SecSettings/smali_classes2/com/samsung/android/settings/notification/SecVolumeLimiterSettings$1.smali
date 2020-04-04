.class Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$1;
.super Ljava/lang/Object;
.source "SecVolumeLimiterSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->showSetPasswordDialog()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$102(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->access$200(Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;)Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSeekBarPreference;->DisplayCheckUI()V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/notification/SecVolumeLimiterSettings;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0x1017

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    return v1
.end method
