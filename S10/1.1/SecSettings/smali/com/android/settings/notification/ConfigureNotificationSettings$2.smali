.class Lcom/android/settings/notification/ConfigureNotificationSettings$2;
.super Landroid/text/style/ClickableSpan;
.source "ConfigureNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ConfigureNotificationSettings;->setLinkedDataView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

.field final synthetic val$linkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ConfigureNotificationSettings;Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$2;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    iput-object p2, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$2;->val$linkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$2;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-virtual {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$2;->this$0:Lcom/android/settings/notification/ConfigureNotificationSettings;

    invoke-static {v0}, Lcom/android/settings/notification/ConfigureNotificationSettings;->access$000(Lcom/android/settings/notification/ConfigureNotificationSettings;)Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ConfigureNotificationSettings$2;->val$linkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->startFooterViewLink(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    return-void
.end method
