.class Lcom/samsung/android/settingslib/wifi/AccessPointPreference$2;
.super Ljava/lang/Object;
.source "AccessPointPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settingslib/wifi/AccessPointPreference;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$2;->this$0:Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$2;->this$0:Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-static {v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->access$000(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)Lcom/samsung/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->access$100(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;Lcom/samsung/android/settingslib/wifi/AccessPoint;)V

    return-void
.end method