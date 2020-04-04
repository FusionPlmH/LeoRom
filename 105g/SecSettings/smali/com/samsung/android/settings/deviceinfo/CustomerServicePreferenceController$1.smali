.class Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController$1;
.super Ljava/lang/Object;
.source "CustomerServicePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    const-string/jumbo v0, "tel:1588-3366"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;->access$000(Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/4 v2, 0x1

    return v2
.end method
