.class Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference$1;
.super Ljava/lang/Object;
.source "MobileWIPSSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;->this$0:Lcom/samsung/android/settings/wifi/MobileWIPSSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/MobileWIPSSettings;->access$200(Lcom/samsung/android/settings/wifi/MobileWIPSSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.server.wifi.mwips/whitelist"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "mac_addr=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "MobileWIPSSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "whitelist delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "MobileWIPSSettings"

    const-string v6, "delete whitelist, IllegalStateException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;->this$0:Lcom/samsung/android/settings/wifi/MobileWIPSSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/MobileWIPSSettings;->access$400(Lcom/samsung/android/settings/wifi/MobileWIPSSettings;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;->access$300(Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;->this$0:Lcom/samsung/android/settings/wifi/MobileWIPSSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/MobileWIPSSettings;->access$200(Lcom/samsung/android/settings/wifi/MobileWIPSSettings;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1208fe

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;->this$0:Lcom/samsung/android/settings/wifi/MobileWIPSSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/MobileWIPSSettings;->access$500(Lcom/samsung/android/settings/wifi/MobileWIPSSettings;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference$1;->this$1:Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/MobileWIPSSettings$MWIPSPreference;->this$0:Lcom/samsung/android/settings/wifi/MobileWIPSSettings;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/MobileWIPSSettings;->access$400(Lcom/samsung/android/settings/wifi/MobileWIPSSettings;)Landroid/support/v7/preference/SecPreferenceCategory;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreferenceCount()I

    return-void
.end method
