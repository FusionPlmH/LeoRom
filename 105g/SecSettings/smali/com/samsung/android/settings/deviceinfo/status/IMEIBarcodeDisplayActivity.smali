.class public Lcom/samsung/android/settings/deviceinfo/status/IMEIBarcodeDisplayActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "IMEIBarcodeDisplayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private strImei:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method

.method private makeBarcode(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 16

    const-string v0, ""

    move-object v1, v0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v3, p1

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v4, "ISO-8859-1"

    invoke-direct {v0, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v3, p1

    :goto_0
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    new-instance v0, Lcom/google/zxing/MultiFormatWriter;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatWriter;-><init>()V

    move-object v2, v0

    const/4 v4, 0x0

    move-object v5, v4

    :try_start_2
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    const/16 v6, 0x780

    const/16 v7, 0x140

    invoke-virtual {v2, v1, v0, v6, v7}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v0
    :try_end_2
    .catch Lcom/google/zxing/WriterException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v0

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->printStackTrace()V

    :goto_2
    if-nez v5, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    mul-int v6, v0, v4

    new-array v14, v6, [I

    const/4 v6, 0x0

    move v7, v6

    :goto_3
    if-ge v7, v4, :cond_3

    mul-int v8, v7, v0

    move v9, v6

    :goto_4
    if-ge v9, v0, :cond_2

    add-int v10, v8, v9

    invoke-virtual {v5, v9, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_1

    const/high16 v11, -0x1000000

    goto :goto_5

    :cond_1
    const/4 v11, -0x1

    :goto_5
    aput v11, v14, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v6, v15

    move-object v7, v14

    move v9, v0

    move v12, v0

    move v13, v4

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v15
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SupportMenuImeiBarCode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/IMEIBarcodeDisplayActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/IMEIBarcodeDisplayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/IMEIBarcodeDisplayActivity;->finish()V

    return-void

    :cond_1
    const-string v1, "imei_barcode_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/IMEIBarcodeDisplayActivity;->strImei:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/status/IMEIBarcodeDisplayActivity;->strImei:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12193b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/IMEIBarcodeDisplayActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d01c9

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a03ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0a03f1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/status/IMEIBarcodeDisplayActivity;->strImei:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/deviceinfo/status/IMEIBarcodeDisplayActivity;->makeBarcode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/status/IMEIBarcodeDisplayActivity;->strImei:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/IMEIBarcodeDisplayActivity;->finish()V

    :goto_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/status/IMEIBarcodeDisplayActivity;->finish()V

    return-void
.end method
