.class public Lcom/samsung/android/settings/eternal/provider/items/AccountsItem;
.super Ljava/lang/Object;
.source "AccountsItem.java"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AccountsItem"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/AccountsItem;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;
    .locals 6

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x2a7b045d

    if-eq v4, v5, :cond_1

    const v5, 0x7ccba1da

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "/Settings/Accounts/SamsungAccountID"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "/Settings/Accounts/GoogleAccountID"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    :goto_0
    packed-switch v2, :pswitch_data_0

    const-string v2, "AccountsItem"

    goto :goto_1

    :pswitch_0
    const-string v2, "com.osp.app.signin"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v4, v2

    if-lez v4, :cond_3

    aget-object v4, v2, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_2

    :pswitch_1
    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v4, v2

    if-lez v4, :cond_3

    aget-object v4, v2, v3

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_2

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v2

    const-string v4, "AccountsItem"

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v3, v5, v3

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v1}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v2

    return-object v2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x2a7b045d

    if-eq v2, v3, :cond_1

    const v3, 0x7ccba1da

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "/Settings/Accounts/SamsungAccountID"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "/Settings/Accounts/GoogleAccountID"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    nop

    :goto_2
    const/4 v2, 0x0

    return-object v2
.end method
