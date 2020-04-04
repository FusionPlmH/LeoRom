.class Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;
.super Landroid/os/AsyncTask;
.source "SamsungKnoxPrivacyNotice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EulaDownloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 18

    move-object/from16 v1, p0

    const/4 v0, 0x0

    move-object v2, v0

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "https://eula.secb2b.com"

    iget-object v5, v1, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v5}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$000(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "china"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "https://eula.secb2b.com.cn"

    move-object v4, v5

    goto :goto_0

    :cond_0
    const-string v5, "https://eula-dev.secb2b.com"

    move-object v4, v5

    :cond_1
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/EULA"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    iget-object v5, v1, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/PPInfo"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getEulaFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v7, v6}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$100(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Lorg/json/JSONObject;)Z

    move-result v7

    const-string v8, "KnoxNotice"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Samsung Knox Privacy Policy is Need update : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_8

    const-string v0, "GDPR"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v9, v1, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$300()I

    move-result v10

    invoke-static {v9, v10}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$202(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;I)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/GDPR"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    goto :goto_1

    :cond_2
    iget-object v9, v1, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$400()I

    move-result v10

    invoke-static {v9, v10}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$202(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;I)I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "/KLMS"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".html"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x2

    invoke-virtual {v9, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ".html"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/default.html"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    if-nez v8, :cond_4

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v14

    const-string v15, "korea"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    iget-object v14, v1, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$500()I

    move-result v15

    invoke-static {v14, v15}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$202(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;I)I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    const-string v15, "ko"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/korea_ko.html"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    move-object v11, v14

    move-object v10, v14

    goto :goto_2

    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/korea_en.html"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    move-object v11, v14

    move-object v10, v14

    :cond_4
    :goto_2
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/String;

    aput-object v10, v14, v3

    const/4 v15, 0x1

    aput-object v11, v14, v15

    aput-object v13, v14, v12

    const-string v15, "KnoxNotice"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get Knox Privacy Policy try locale = "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    const/4 v12, 0x0

    aget-object v15, v14, v12

    invoke-virtual {v3, v15}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getEulaFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v3

    if-nez v2, :cond_5

    :try_start_1
    const-string v3, "KnoxNotice"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Get Knox Privacy Policy try laguage = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    const/4 v0, 0x2

    const/4 v15, 0x0

    :try_start_2
    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    const/4 v2, 0x1

    aget-object v3, v14, v2

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getEulaFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v2, v17

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v17, v2

    goto :goto_4

    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    :goto_3
    if-nez v2, :cond_6

    :try_start_3
    const-string v0, "KnoxNotice"

    const-string v3, "Get Knox Privacy Policy try default"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    const/4 v3, 0x2

    aget-object v3, v14, v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getEulaFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :cond_6
    if-eqz v2, :cond_7

    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    const-string/jumbo v3, "version"

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$602(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :cond_7
    nop

    iget-object v0, v1, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$702(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Z)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :cond_8
    return-object v0

    :catch_2
    move-exception v0

    :goto_4
    iget-object v3, v1, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$702(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Z)Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const-string v0, "KnoxNotice"

    const-string v1, "Knox Privacy Policy result == null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$800(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "LATEST_EULA"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$900(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$800(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LATEST_EULA"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "DOWNLOAD_LANGUAGE"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "DEVICE_TYPE"

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$200(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "LATEST_VERSION"

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$600(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$600(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "DEVICE_TYPE"

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$200(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "KnoxNotice"

    const-string v3, "onPostExecute : json Error"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "KnoxNotice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveVersion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$600(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$1000(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "LATEST_VERSION"

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$600(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->this$0:Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;

    invoke-static {v1, p1}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->access$900(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
