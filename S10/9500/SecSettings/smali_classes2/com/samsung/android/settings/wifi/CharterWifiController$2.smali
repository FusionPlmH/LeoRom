.class Lcom/samsung/android/settings/wifi/CharterWifiController$2;
.super Landroid/content/AsyncQueryHandler;
.source "CharterWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/CharterWifiController;->callContentProvider(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/CharterWifiController;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/CharterWifiController$2;->this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-static {}, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->values()[Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;

    move-result-object v0

    const-string v2, "status"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aget-object v0, v0, v2

    sget-object v2, Lcom/samsung/android/settings/wifi/CharterWifiController$3;->$SwitchMap$com$samsung$android$settings$wifi$CharterWifiController$CHA_RESULT:[I

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/CharterWifiController$CHA_RESULT;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "CharterWifiController"

    const-string v2, "Error..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/CharterWifiController$2;->this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/CharterWifiController;->access$200(Lcom/samsung/android/settings/wifi/CharterWifiController;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/CharterWifiController$2;->this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/CharterWifiController;->access$100(Lcom/samsung/android/settings/wifi/CharterWifiController;Z)V

    const-string v1, "CharterWifiController"

    const-string v2, "Connection service is started..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/CharterWifiController$2;->this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/CharterWifiController;->access$200(Lcom/samsung/android/settings/wifi/CharterWifiController;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/CharterWifiController$2;->this$0:Lcom/samsung/android/settings/wifi/CharterWifiController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/CharterWifiController;->access$100(Lcom/samsung/android/settings/wifi/CharterWifiController;Z)V

    const-string v1, "CharterWifiController"

    const-string v2, "Connection service is stopped..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    :goto_1
    const-string v0, "CharterWifiController"

    const-string v1, "Error in starting connection Service!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
