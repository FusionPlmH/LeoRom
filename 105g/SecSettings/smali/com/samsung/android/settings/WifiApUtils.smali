.class public Lcom/samsung/android/settings/WifiApUtils;
.super Ljava/lang/Object;
.source "WifiApUtils.java"


# static fields
.field private static final DBG:Z

.field private static DBGSTR:Z

.field public static mMHSCustomer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    sput-boolean v1, Lcom/samsung/android/settings/WifiApUtils;->DBGSTR:Z

    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    return-void
.end method

.method public static getDialogTheme()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, ""

    sget-boolean v2, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "mhs.customer"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sput-object v1, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    :cond_0
    const-string v2, "1"

    const-string v3, "mhs.dbgstr"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/WifiApUtils;->DBGSTR:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/android/settings/WifiApUtils;->DBGSTR:Z

    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getStringID(I)I
    .locals 5

    const-string v0, ""

    sget-boolean v1, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "mhs.customer"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sput-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    :cond_0
    const-string v1, "ril.official_cscver"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f121f97

    if-ne p0, v3, :cond_6

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f121f9c

    goto/16 :goto_15

    :cond_1
    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const p0, 0x7f121f99

    goto/16 :goto_15

    :cond_2
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const p0, 0x7f121f9a

    goto/16 :goto_15

    :cond_3
    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f121f9e

    goto/16 :goto_15

    :cond_4
    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const p0, 0x7f121f9d

    goto/16 :goto_15

    :cond_5
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121f98

    goto/16 :goto_15

    :cond_6
    const v3, 0x7f121d97

    if-ne p0, v3, :cond_b

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const p0, 0x7f121d9a

    goto/16 :goto_15

    :cond_7
    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_0

    :cond_8
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const p0, 0x7f121d99

    goto/16 :goto_15

    :cond_9
    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d9b

    goto/16 :goto_15

    :cond_a
    :goto_0
    const p0, 0x7f121d98

    goto/16 :goto_15

    :cond_b
    const v3, 0x7f121cea

    if-ne p0, v3, :cond_d

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    :cond_c
    const p0, 0x7f121ceb

    goto/16 :goto_15

    :cond_d
    const v3, 0x7f121da8

    if-ne p0, v3, :cond_13

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const p0, 0x7f121db1

    goto/16 :goto_15

    :cond_e
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const p0, 0x7f121db0

    goto/16 :goto_15

    :cond_f
    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const p0, 0x7f121dac

    goto/16 :goto_15

    :cond_10
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const p0, 0x7f121dad

    goto/16 :goto_15

    :cond_11
    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const p0, 0x7f121db2

    goto/16 :goto_15

    :cond_12
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121dab

    goto/16 :goto_15

    :cond_13
    const v3, 0x7f1210d7

    if-ne p0, v3, :cond_15

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const p0, 0x7f121ac2

    goto/16 :goto_15

    :cond_14
    const p0, 0x7f12077a

    goto/16 :goto_15

    :cond_15
    const v3, 0x7f1210d8

    if-ne p0, v3, :cond_17

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const p0, 0x7f121ac4

    goto/16 :goto_15

    :cond_16
    const p0, 0x7f120517

    goto/16 :goto_15

    :cond_17
    const v3, 0x7f121dae

    if-ne p0, v3, :cond_18

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121daf

    goto/16 :goto_15

    :cond_18
    const v3, 0x7f121db3

    if-ne p0, v3, :cond_1c

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const p0, 0x7f121db7

    goto/16 :goto_15

    :cond_19
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const p0, 0x7f121db5

    goto/16 :goto_15

    :cond_1a
    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const p0, 0x7f121db8

    goto/16 :goto_15

    :cond_1b
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121db4

    goto/16 :goto_15

    :cond_1c
    const v3, 0x7f121d90

    if-ne p0, v3, :cond_22

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const p0, 0x7f121d91

    goto/16 :goto_15

    :cond_1d
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const p0, 0x7f121d94

    goto/16 :goto_15

    :cond_1e
    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_1

    :cond_1f
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const p0, 0x7f121d93

    goto/16 :goto_15

    :cond_20
    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d95

    goto/16 :goto_15

    :cond_21
    :goto_1
    const p0, 0x7f121d92

    goto/16 :goto_15

    :cond_22
    const v3, 0x7f121cdc

    if-ne p0, v3, :cond_28

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_2

    :cond_23
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const p0, 0x7f121ce0

    goto/16 :goto_15

    :cond_24
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const p0, 0x7f121cdf

    goto/16 :goto_15

    :cond_25
    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const p0, 0x7f121ce1

    goto/16 :goto_15

    :cond_26
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121cde

    goto/16 :goto_15

    :cond_27
    :goto_2
    const p0, 0x7f121cdd

    goto/16 :goto_15

    :cond_28
    const v3, 0x7f121ced

    if-ne p0, v3, :cond_2b

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    const p0, 0x7f121cef

    goto/16 :goto_15

    :cond_29
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const p0, 0x7f121cee

    goto/16 :goto_15

    :cond_2a
    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121cf0

    goto/16 :goto_15

    :cond_2b
    const v3, 0x7f121cbf

    if-ne p0, v3, :cond_30

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_3

    :cond_2c
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const p0, 0x7f121cc3

    goto/16 :goto_15

    :cond_2d
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const p0, 0x7f121cc1

    goto/16 :goto_15

    :cond_2e
    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121cc2

    goto/16 :goto_15

    :cond_2f
    :goto_3
    const p0, 0x7f121cc0

    goto/16 :goto_15

    :cond_30
    const v3, 0x7f121d28

    if-ne p0, v3, :cond_36

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_4

    :cond_31
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    const p0, 0x7f121d2c

    goto/16 :goto_15

    :cond_32
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    const p0, 0x7f121d2b

    goto/16 :goto_15

    :cond_33
    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const p0, 0x7f121d2d

    goto/16 :goto_15

    :cond_34
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d2a

    goto/16 :goto_15

    :cond_35
    :goto_4
    const p0, 0x7f121d29

    goto/16 :goto_15

    :cond_36
    const v3, 0x7f121d2e

    if-ne p0, v3, :cond_3a

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_5

    :cond_37
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    const p0, 0x7f121d31

    goto/16 :goto_15

    :cond_38
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d30

    goto/16 :goto_15

    :cond_39
    :goto_5
    const p0, 0x7f121d2f

    goto/16 :goto_15

    :cond_3a
    const v3, 0x7f121d32

    if-ne p0, v3, :cond_3e

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_6

    :cond_3b
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const p0, 0x7f121d35

    goto/16 :goto_15

    :cond_3c
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d34

    goto/16 :goto_15

    :cond_3d
    :goto_6
    const p0, 0x7f121d33

    goto/16 :goto_15

    :cond_3e
    const v3, 0x7f121d36

    if-ne p0, v3, :cond_44

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    const p0, 0x7f121d37

    goto/16 :goto_15

    :cond_3f
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    const p0, 0x7f121d3a

    goto/16 :goto_15

    :cond_40
    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    goto :goto_7

    :cond_41
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    const p0, 0x7f121d39

    goto/16 :goto_15

    :cond_42
    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d3b

    goto/16 :goto_15

    :cond_43
    :goto_7
    const p0, 0x7f121d38    # 1.94219E38f

    goto/16 :goto_15

    :cond_44
    const v3, 0x7f121cf4

    if-ne p0, v3, :cond_4a

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    goto :goto_8

    :cond_45
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const p0, 0x7f121cf8

    goto/16 :goto_15

    :cond_46
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    const p0, 0x7f121cf7

    goto/16 :goto_15

    :cond_47
    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    const p0, 0x7f121cf9

    goto/16 :goto_15

    :cond_48
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121cf6

    goto/16 :goto_15

    :cond_49
    :goto_8
    const p0, 0x7f121cf5

    goto/16 :goto_15

    :cond_4a
    const v3, 0x7f121cfa

    if-ne p0, v3, :cond_4e

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_9

    :cond_4b
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const p0, 0x7f121cfd

    goto/16 :goto_15

    :cond_4c
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121cfc

    goto/16 :goto_15

    :cond_4d
    :goto_9
    const p0, 0x7f121cfb

    goto/16 :goto_15

    :cond_4e
    const v3, 0x7f121cfe

    if-ne p0, v3, :cond_52

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    goto :goto_a

    :cond_4f
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const p0, 0x7f121d01

    goto/16 :goto_15

    :cond_50
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d00

    goto/16 :goto_15

    :cond_51
    :goto_a
    const p0, 0x7f121cff

    goto/16 :goto_15

    :cond_52
    const v3, 0x7f121d02

    if-ne p0, v3, :cond_58

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    const p0, 0x7f121d03

    goto/16 :goto_15

    :cond_53
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    const p0, 0x7f121d06

    goto/16 :goto_15

    :cond_54
    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    goto :goto_b

    :cond_55
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    const p0, 0x7f121d05

    goto/16 :goto_15

    :cond_56
    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d07

    goto/16 :goto_15

    :cond_57
    :goto_b
    const p0, 0x7f121d04

    goto/16 :goto_15

    :cond_58
    const v3, 0x7f121d3c

    if-ne p0, v3, :cond_5a

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    const p0, 0x7f121d3e

    goto/16 :goto_15

    :cond_59
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d3d

    goto/16 :goto_15

    :cond_5a
    const v3, 0x7f121d3f

    if-ne p0, v3, :cond_5c

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    const p0, 0x7f121d41

    goto/16 :goto_15

    :cond_5b
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d40

    goto/16 :goto_15

    :cond_5c
    const v3, 0x7f121d42

    if-ne p0, v3, :cond_5e

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    const p0, 0x7f121d44

    goto/16 :goto_15

    :cond_5d
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d43

    goto/16 :goto_15

    :cond_5e
    const v3, 0x7f121d45

    if-ne p0, v3, :cond_5f

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d46

    goto/16 :goto_15

    :cond_5f
    const v3, 0x7f121d08

    if-ne p0, v3, :cond_61

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    const p0, 0x7f121d0a

    goto/16 :goto_15

    :cond_60
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d09

    goto/16 :goto_15

    :cond_61
    const v3, 0x7f121d0b

    if-ne p0, v3, :cond_63

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    const p0, 0x7f121d0d

    goto/16 :goto_15

    :cond_62
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d0c

    goto/16 :goto_15

    :cond_63
    const v3, 0x7f121d0e

    if-ne p0, v3, :cond_65

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    const p0, 0x7f121d10

    goto/16 :goto_15

    :cond_64
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d0f

    goto/16 :goto_15

    :cond_65
    const v3, 0x7f121d11

    if-ne p0, v3, :cond_66

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d12

    goto/16 :goto_15

    :cond_66
    const v3, 0x7f121d14

    if-ne p0, v3, :cond_6d

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    const p0, 0x7f121d15

    goto/16 :goto_15

    :cond_67
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    const p0, 0x7f121d1a

    goto/16 :goto_15

    :cond_68
    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    goto :goto_c

    :cond_69
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    const p0, 0x7f121d19

    goto/16 :goto_15

    :cond_6a
    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    const p0, 0x7f121d1b

    goto/16 :goto_15

    :cond_6b
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d16

    goto/16 :goto_15

    :cond_6c
    :goto_c
    const p0, 0x7f121d18

    goto/16 :goto_15

    :cond_6d
    const v3, 0x7f120707

    if-ne p0, v3, :cond_72

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_71

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    goto :goto_d

    :cond_6e
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    const p0, 0x7f12070a

    goto/16 :goto_15

    :cond_6f
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    const p0, 0x7f120709

    goto/16 :goto_15

    :cond_70
    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f12070b

    goto/16 :goto_15

    :cond_71
    :goto_d
    const p0, 0x7f120708

    goto/16 :goto_15

    :cond_72
    const v3, 0x7f121add

    if-ne p0, v3, :cond_73

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121ade

    goto/16 :goto_15

    :cond_73
    const v3, 0x7f121d88

    if-ne p0, v3, :cond_77

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_76

    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    goto :goto_e

    :cond_74
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    const p0, 0x7f121d8b

    goto/16 :goto_15

    :cond_75
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d8a

    goto/16 :goto_15

    :cond_76
    :goto_e
    const p0, 0x7f121d89

    goto/16 :goto_15

    :cond_77
    const v3, 0x7f121d8c

    if-ne p0, v3, :cond_7b

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    goto :goto_f

    :cond_78
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    const p0, 0x7f121d8f

    goto/16 :goto_15

    :cond_79
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d8e

    goto/16 :goto_15

    :cond_7a
    :goto_f
    const p0, 0x7f121d8d

    goto/16 :goto_15

    :cond_7b
    const v3, 0x7f121ebe

    if-ne p0, v3, :cond_7c

    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121ebf

    goto/16 :goto_15

    :cond_7c
    const v3, 0x7f121fa0

    if-ne p0, v3, :cond_81

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_80

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    goto :goto_10

    :cond_7d
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    const p0, 0x7f121fa3

    goto/16 :goto_15

    :cond_7e
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    const p0, 0x7f121fa2

    goto/16 :goto_15

    :cond_7f
    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121fa4

    goto/16 :goto_15

    :cond_80
    :goto_10
    const p0, 0x7f121fa1

    goto/16 :goto_15

    :cond_81
    const v3, 0x7f121ce8

    if-ne p0, v3, :cond_82

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121ce9

    goto/16 :goto_15

    :cond_82
    const v3, 0x7f121cab

    if-ne p0, v3, :cond_83

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121cac

    goto/16 :goto_15

    :cond_83
    const v3, 0x7f121d54

    if-ne p0, v3, :cond_87

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_86

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    goto :goto_11

    :cond_84
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    const p0, 0x7f121d57

    goto/16 :goto_15

    :cond_85
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d56

    goto/16 :goto_15

    :cond_86
    :goto_11
    const p0, 0x7f121d55

    goto/16 :goto_15

    :cond_87
    const v3, 0x7f121cf3

    if-ne p0, v3, :cond_8b

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    const p0, 0x7f121d49

    goto/16 :goto_15

    :cond_88
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_89

    const p0, 0x7f121d48

    goto/16 :goto_15

    :cond_89
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    const p0, 0x7f121d47

    goto/16 :goto_15

    :cond_8a
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d1c

    goto/16 :goto_15

    :cond_8b
    const v3, 0x7f121d5e

    if-ne p0, v3, :cond_8e

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8d

    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    goto :goto_12

    :cond_8c
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d61

    goto/16 :goto_15

    :cond_8d
    :goto_12
    const p0, 0x7f121d5f

    goto/16 :goto_15

    :cond_8e
    const v3, 0x7f121d1d

    if-ne p0, v3, :cond_90

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    const p0, 0x7f121d21

    goto/16 :goto_15

    :cond_8f
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d20

    goto/16 :goto_15

    :cond_90
    const v3, 0x7f120ea6

    if-ne p0, v3, :cond_94

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    goto :goto_13

    :cond_91
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    const p0, 0x7f120ea9

    goto/16 :goto_15

    :cond_92
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f120ea8

    goto/16 :goto_15

    :cond_93
    :goto_13
    const p0, 0x7f120ea7

    goto/16 :goto_15

    :cond_94
    const v3, 0x7f121d1e

    if-ne p0, v3, :cond_95

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d1f

    goto/16 :goto_15

    :cond_95
    const v3, 0x7f120a53

    if-ne p0, v3, :cond_96

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f120a54

    goto/16 :goto_15

    :cond_96
    const v3, 0x7f120a50

    if-ne p0, v3, :cond_97

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f120a51

    goto/16 :goto_15

    :cond_97
    const v3, 0x7f121d82

    if-ne p0, v3, :cond_9b

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    const p0, 0x7f121d87

    goto/16 :goto_15

    :cond_98
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    const p0, 0x7f121d86

    goto/16 :goto_15

    :cond_99
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    const p0, 0x7f121d84

    goto/16 :goto_15

    :cond_9a
    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121d83

    goto/16 :goto_15

    :cond_9b
    const v3, 0x7f121cbd

    if-ne p0, v3, :cond_9c

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121cbe

    goto/16 :goto_15

    :cond_9c
    const v3, 0x7f121cbb

    if-ne p0, v3, :cond_9d

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121cbc

    goto/16 :goto_15

    :cond_9d
    const v3, 0x7f120e97

    if-ne p0, v3, :cond_9e

    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f120e98

    goto/16 :goto_15

    :cond_9e
    const v3, 0x7f120e95

    if-ne p0, v3, :cond_9f

    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f120e96

    goto/16 :goto_15

    :cond_9f
    const v3, 0x7f1207bf

    if-ne p0, v3, :cond_a0

    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f1207c0

    goto/16 :goto_15

    :cond_a0
    const v3, 0x7f121e16

    if-ne p0, v3, :cond_a1

    const-string v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121e17

    goto/16 :goto_15

    :cond_a1
    const v3, 0x7f121fd9

    if-ne p0, v3, :cond_a2

    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121fdc

    goto/16 :goto_15

    :cond_a2
    const v3, 0x7f121fda

    if-ne p0, v3, :cond_a3

    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121fdb

    goto/16 :goto_15

    :cond_a3
    const v3, 0x7f121ce6

    if-ne p0, v3, :cond_a4

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121ce7

    goto/16 :goto_15

    :cond_a4
    const v3, 0x7f121f8f

    if-ne p0, v3, :cond_a9

    const-string v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a8

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    goto :goto_14

    :cond_a5
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    const p0, 0x7f121f91

    goto/16 :goto_15

    :cond_a6
    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    const p0, 0x7f121f90

    goto/16 :goto_15

    :cond_a7
    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121f92

    goto :goto_15

    :cond_a8
    :goto_14
    const p0, 0x7f121f93

    goto :goto_15

    :cond_a9
    const v3, 0x7f121e66

    if-ne p0, v3, :cond_ab

    const-string v3, "DCM"

    sget-object v4, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    const p0, 0x7f121e67

    goto :goto_15

    :cond_aa
    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    const p0, 0x7f121e68

    goto :goto_15

    :cond_ab
    const v3, 0x7f121df3

    if-ne p0, v3, :cond_ad

    const-string v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ac

    const-string v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ac

    const-string v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ac

    const-string v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ac

    const-string v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    :cond_ac
    const p0, 0x7f121df4

    :cond_ad
    :goto_15
    return p0
.end method
