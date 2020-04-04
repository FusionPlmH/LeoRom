.class public Lcom/android/settings/wifi/details/CheckManageRouterTask;
.super Landroid/os/AsyncTask;
.source "CheckManageRouterTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static mResponse:I


# instance fields
.field private mCallback:Lcom/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;

.field private urlConnection:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->mResponse:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    sget v0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->mResponse:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->mResponse:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    aget-object v0, p1, v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iput-object v2, p0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    move v1, v2

    const-string v2, "CheckManageRouterTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Go To Webpage: HTTP Response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "CheckManageRouterTask"

    const-string v4, "Go to Webpage: reach to finally"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "CheckManageRouterTask"

    const-string v3, "Go to Webpage: Error opening connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "CheckManageRouterTask"

    const-string v2, "Go to Webpage: reach to finally"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "CheckManageRouterTask"

    const-string v3, "Go to Webpage: Error getting URL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "CheckManageRouterTask"

    const-string v2, "Go to Webpage: reach to finally"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :goto_2
    const-string v2, "CheckManageRouterTask"

    const-string v3, "Go to Webpage: reach to finally"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->urlConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/details/CheckManageRouterTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->mResponse:I

    iget-object v0, p0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->mCallback:Lcom/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->mCallback:Lcom/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;->onReceiveResponse(I)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "CheckManageRouterTask"

    const-string v1, "Go to Webpage: HTTP response is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/details/CheckManageRouterTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method public resetResponseCode()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->mResponse:I

    return-void
.end method

.method public setListener(Lcom/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->mCallback:Lcom/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;

    sget v0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->mResponse:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/details/CheckManageRouterTask;->mCallback:Lcom/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;

    sget v1, Lcom/android/settings/wifi/details/CheckManageRouterTask;->mResponse:I

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/details/CheckManageRouterTask$ICheckHttpResponseCallback;->onReceiveResponse(I)V

    :cond_0
    return-void
.end method
