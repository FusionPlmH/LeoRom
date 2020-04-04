.class public final Lcom/samsung/android/app/SemExecutableInfo;
.super Ljava/lang/Object;
.source "SemExecutableInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CLASSNAME_PREFIX_FOR_SEC_PRODUCT_FEATURE:Ljava/lang/String; = "SecProductFeature_"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final CSC_FEATURE_PREFIX:Ljava/lang/String; = "CscFeature_"

.field private static final DEBUG:Z

.field public static final LAUNCH_TYPE_ACTIVITY:I = 0x0

.field public static final LAUNCH_TYPE_ACTIVITY_FOR_RESULT:I = 0x3

.field public static final LAUNCH_TYPE_BROADCAST:I = 0x2

.field public static final LAUNCH_TYPE_SERVICE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SemExecutableInfo"

.field private static final MD_LABEL_EXECUTABLE:Ljava/lang/String; = "com.samsung.android.support.executable"

.field private static final ORDER_INIT_VALUE:I = -0x270c

.field private static final ORDER_INVALID_FORMAT:I = -0x270e

.field private static final ORDER_NOT_ALLOWED:I = -0x270d

.field private static final ORDER_OUT_OF_RANGE:I = -0x270f

.field private static final PACKAGE_PREFIX_FOR_SEC_PRODUCT_FEATURE:Ljava/lang/String; = "com.sec.android.app."

.field private static final SEC_FLOATING_FEATURE_PREFIX:Ljava/lang/String; = "SEC_FLOATING_FEATURE_"

.field private static final SEC_PRODUCT_FEATURE_PREFIX:Ljava/lang/String; = "SEC_PRODUCT_FEATURE_"

.field private static final XML_ELEMENT_COMMAND:Ljava/lang/String; = "command"

.field private static final XML_ELEMENT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ELEMENT_EXECUTABLE:Ljava/lang/String; = "executable"

.field private static final XML_ELEMENT_EXTRA_ATTR:Ljava/lang/String; = "extras-attr"

.field private static final XML_ELEMENT_EXTRA_ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final XML_ELEMENT_EXTRA_ATTR_COMPONENTNAME:Ljava/lang/String; = "componentName"

.field private static final XML_ELEMENT_EXTRA_ATTR_EXTRAS:Ljava/lang/String; = "extras"

.field private static final XML_ELEMENT_EXTRA_ATTR_FEATURE:Ljava/lang/String; = "feature"

.field private static final XML_ELEMENT_EXTRA_ATTR_INTETNACTION:Ljava/lang/String; = "action"

.field private static final XML_ELEMENT_EXTRA_ATTR_LAUCHMODE:Ljava/lang/String; = "launchMode"

.field private static final XML_ELEMENT_EXTRA_ATTR_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE_ACTIVITY_FOR_RESULT:Ljava/lang/String; = "activityForResult"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE_BROADCAST:Ljava/lang/String; = "broadcast"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE_SERVICE:Ljava/lang/String; = "service"

.field private static final XML_ELEMENT_ICON:Ljava/lang/String; = "icon"

.field private static final XML_ELEMENT_LABEL:Ljava/lang/String; = "label"

.field private static final XML_ELEMENT_LAUCHMODE_CLEARTOP:Ljava/lang/String; = "clearTop"

.field private static final XML_ELEMENT_LAUCHMODE_NEWTASK:Ljava/lang/String; = "newTask"

.field private static final XML_ELEMENT_LAUCHMODE_SINGLETOP:Ljava/lang/String; = "singleTop"

.field private static final XML_ELEMENT_SMALL_ICON:Ljava/lang/String; = "smallIcon"


# instance fields
.field mAction:Ljava/lang/String;

.field mActivityLaunchMode:Ljava/lang/String;

.field mBundle:Landroid/os/Bundle;

.field mCategory:Ljava/lang/String;

.field mComponentName:Ljava/lang/String;

.field mEnabled:Z

.field mFeatureNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFeatureValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mIconId:I

.field mLabelId:I

.field mLaunchType:I

.field mPackageName:Ljava/lang/String;

.field mSmallIconId:I

.field mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    new-instance v0, Lcom/samsung/android/app/SemExecutableInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/SemExecutableInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/SemExecutableInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableInfo;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    return-void
.end method

.method private addExtraAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    sget-object v0, Lcom/android/internal/R$styleable;->extrasCommand:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "launchMode"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v7, "type"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "activity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v7, "service"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iput v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto/16 :goto_0

    :cond_2
    const-string v5, "broadcast"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto/16 :goto_0

    :cond_3
    const-string v3, "activityForResult"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto :goto_0

    :cond_4
    iput v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto :goto_0

    :cond_5
    const-string v1, "category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    goto :goto_0

    :cond_6
    const-string v1, "action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "packageName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_8
    const-string v1, "componentName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    goto :goto_0

    :cond_9
    const-string v1, "feature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_a
    const-string v1, "extras"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static checkValidate(Lcom/samsung/android/app/SemExecutableInfo;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_1

    sget-boolean v1, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SemExecutableInfo"

    const-string v2, "Invalid SemExecutableInfo"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "SemExecutableInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disabled SemExecutableInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getLaunchType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getComponentName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    :cond_4
    sget-boolean v1, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "SemExecutableInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid packageName or componentName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getLabelId()I

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getIconId()I

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_5

    :cond_7
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1e

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_17

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_17

    const-string v5, "CscFeature_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "!"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v3, :cond_8

    return v0

    :cond_8
    goto :goto_1

    :cond_9
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    sget-boolean v3, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v3, :cond_a

    const-string v3, "SemExecutableInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return v0

    :cond_b
    :goto_1
    goto/16 :goto_4

    :cond_c
    const-string v5, "SEC_FLOATING_FEATURE_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string v5, ""

    const-string v6, "!"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v3, :cond_d

    return v0

    :cond_d
    goto :goto_2

    :cond_e
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    sget-boolean v3, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v3, :cond_f

    const-string v3, "SemExecutableInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return v0

    :cond_10
    :goto_2
    goto/16 :goto_4

    :cond_11
    const-string v5, "SEC_PRODUCT_FEATURE_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    return v0

    :cond_12
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "!"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v3, :cond_13

    return v0

    :cond_13
    goto :goto_3

    :cond_14
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    sget-boolean v3, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v3, :cond_15

    const-string v3, "SemExecutableInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    return v0

    :cond_16
    :goto_3
    goto/16 :goto_4

    :cond_17
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1a

    if-eqz v4, :cond_18

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1a

    :cond_18
    sget-boolean v3, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v3, :cond_19

    const-string v3, "SemExecutableInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return v0

    :cond_1a
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1d

    if-eqz v2, :cond_1b

    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1d

    :cond_1b
    sget-boolean v3, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v3, :cond_1c

    const-string v3, "SemExecutableInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No feature name is provided for the value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    return v0

    :cond_1d
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1e
    return v3

    :cond_1f
    :goto_5
    sget-boolean v1, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v1, :cond_20

    const-string v1, "SemExecutableInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid label or icon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return v0
.end method

.method private static createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "SemExecutableInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t make context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "SemExecutableInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :goto_1
    return-object v0
.end method

.method private static examineOrderInCategory(Lcom/samsung/android/app/SemExecutableInfo;Z)V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, ""

    const/16 v2, -0x270c

    if-nez p1, :cond_0

    const/16 v2, -0x270d

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/SemExecutableInfo;->getCategories()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    const-string v4, "\\|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move-object v6, v0

    move v7, v2

    move v2, v5

    :goto_0
    if-ge v2, v4, :cond_b

    aget-object v9, v3, v2

    const-string v0, "@"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    packed-switch v11, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-boolean v5, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v5, :cond_a

    const-string v5, "SemExecutableInfo"

    const-string v6, "Invalid category format for category order"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_0
    const/16 v12, -0x270e

    const/16 v13, -0x270f

    const/16 v14, -0x270d

    if-eq v7, v14, :cond_7

    :try_start_0
    aget-object v0, v10, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v0

    const/16 v0, -0x3e8

    if-lt v7, v0, :cond_1

    const/16 v0, 0x3e8

    if-le v7, v0, :cond_7

    :cond_1
    const/16 v7, -0x270f

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    const/16 v7, -0x270e

    :try_start_1
    sget-boolean v15, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v15, :cond_2

    const-string v5, "SemExecutableInfo"

    const-string v8, "Invalid order"

    invoke-static {v5, v8}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eq v7, v13, :cond_4

    if-eq v7, v14, :cond_4

    if-ne v7, v12, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-object v5, v10, v5

    goto :goto_8

    :goto_2
    if-eq v7, v13, :cond_6

    if-eq v7, v14, :cond_6

    if-ne v7, v12, :cond_5

    goto :goto_3

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_6
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget-object v4, v10, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    throw v0

    :cond_7
    :goto_5
    if-eq v7, v13, :cond_9

    if-eq v7, v14, :cond_9

    if-ne v7, v12, :cond_8

    goto :goto_7

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_9
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-object v5, v10, v5

    :goto_8
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    goto :goto_a

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "|"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_a
    :goto_a
    move-object v6, v0

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    move-object v0, v6

    move v2, v7

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getActivityMetaData(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)Lcom/samsung/android/app/SemExecutableInfo;
    .locals 6

    new-instance v0, Lcom/samsung/android/app/SemExecutableInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/SemExecutableInfo;-><init>()V

    invoke-static {p0, p2}, Lcom/samsung/android/app/SemExecutableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->command:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private getBundleString()Ljava/lang/String;
    .locals 6

    const-string v0, ""

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static scanExecutableInfos(Landroid/content/Context;)Ljava/util/List;
    .locals 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SemExecutableInfo"

    const-string/jumbo v2, "scan scanExecutableInfos start"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "com.samsung.android.support.executable"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    const/4 v0, 0x0

    const/16 v5, 0x280

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.android.support.executable"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x280

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.android.support.executable"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.android.support.executable"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x3

    new-array v10, v9, [Ljava/util/List;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v12, 0x1

    aput-object v8, v10, v12

    const/4 v13, 0x2

    aput-object v7, v10, v13

    array-length v14, v10

    :goto_0
    if-ge v11, v14, :cond_17

    aget-object v15, v10, v11

    sget-boolean v16, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v16, :cond_1

    const-string v9, "SemExecutableInfo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "list size = "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v12, v0

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/ResolveInfo;

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v22, v0

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_2

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/16 v16, 0x1

    xor-int/lit8 v0, v0, 0x1

    move/from16 v20, v0

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    move/from16 v21, v0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    goto :goto_2

    :cond_2
    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_3

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v25, v0

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/16 v16, 0x1

    xor-int/lit8 v0, v0, 0x1

    move/from16 v20, v0

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    move/from16 v21, v0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v29, v5

    move-object/from16 v30, v6

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v5, v25

    move-object/from16 v6, v26

    goto :goto_2

    :cond_3
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v6, v16

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v5, v22

    :goto_2
    if-nez v2, :cond_14

    if-eqz v3, :cond_4

    move-object/from16 v34, v5

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    goto/16 :goto_14

    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    move-object/from16 v31, v7

    iget-object v7, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v8

    iget-object v8, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v8, "com.samsung.android.support.executable"

    invoke-virtual {v6, v0, v8}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    if-nez v0, :cond_5

    nop

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    goto/16 :goto_15

    :cond_5
    const/4 v12, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v19
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10

    :goto_3
    move/from16 v33, v19

    move-object/from16 v34, v5

    move/from16 v35, v8

    move/from16 v5, v33

    const/4 v8, 0x1

    if-eq v5, v8, :cond_13

    :try_start_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v36, v18

    const/4 v8, 0x2

    if-ne v5, v8, :cond_c

    const-string v8, "executable"
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    move-object/from16 v37, v9

    move-object/from16 v9, v36

    :try_start_2
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    move/from16 v35, v8

    :cond_6
    const-string v8, "command"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v8, :cond_8

    if-eqz v35, :cond_7

    const/16 v16, 0x1

    :try_start_3
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    invoke-static {v1, v8, v7}, Lcom/samsung/android/app/SemExecutableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)Lcom/samsung/android/app/SemExecutableInfo;

    move-result-object v17
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v8, v17

    move-object v12, v8

    move-object/from16 v38, v10

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v38, v10

    goto/16 :goto_e

    :catch_1
    move-exception v0

    move-object/from16 v38, v10

    goto/16 :goto_f

    :catch_2
    move-exception v0

    move-object/from16 v38, v10

    goto/16 :goto_10

    :catch_3
    move-exception v0

    move-object/from16 v38, v10

    goto/16 :goto_11

    :cond_7
    :try_start_4
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object/from16 v38, v10

    :try_start_5
    const-string v10, "executable element wasn\'t started"

    invoke-direct {v8, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_8
    move-object/from16 v38, v10

    :goto_4
    const-string v8, "extras-attr"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v35, :cond_a

    if-eqz v16, :cond_a

    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v8

    if-eqz v12, :cond_9

    invoke-direct {v12, v1, v8}, Lcom/samsung/android/app/SemExecutableInfo;->addExtraAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_9
    goto :goto_5

    :cond_a
    new-instance v8, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v10, "executable or command element wasn\'t started"

    invoke-direct {v8, v10}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_b
    :goto_5
    move/from16 v40, v5

    :goto_6
    move/from16 v8, v35

    goto/16 :goto_9

    :catch_4
    move-exception v0

    goto/16 :goto_a

    :catch_5
    move-exception v0

    goto/16 :goto_b

    :catch_6
    move-exception v0

    goto/16 :goto_c

    :catch_7
    move-exception v0

    goto/16 :goto_d

    :cond_c
    move-object/from16 v37, v9

    move-object/from16 v38, v10

    move-object/from16 v9, v36

    const/4 v8, 0x3

    if-ne v5, v8, :cond_12

    const-string v10, "executable"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/4 v10, 0x0

    move/from16 v35, v10

    :cond_d
    const-string v10, "command"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const/4 v10, 0x0

    invoke-static {v12}, Lcom/samsung/android/app/SemExecutableInfo;->checkValidate(Lcom/samsung/android/app/SemExecutableInfo;)Z

    move-result v16

    if-eqz v16, :cond_10

    invoke-static {}, Lcom/samsung/android/app/SemExecutableWhitelist;->getInstance()Lcom/samsung/android/app/SemExecutableWhitelist;

    move-result-object v16

    move-object/from16 v39, v16

    iget-object v8, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v40, v5

    move-object/from16 v5, v39

    invoke-virtual {v5, v1, v8}, Lcom/samsung/android/app/SemExecutableWhitelist;->isAllowedToUseOrder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    invoke-static {v12, v8}, Lcom/samsung/android/app/SemExecutableInfo;->examineOrderInCategory(Lcom/samsung/android/app/SemExecutableInfo;Z)V

    iget-object v1, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v12, v1}, Lcom/samsung/android/app/SemExecutableInfo;->setId(Ljava/lang/String;)V

    const/4 v1, 0x0

    move/from16 v41, v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/samsung/android/app/SemExecutableInfo;

    move-object/from16 v42, v16

    move-object/from16 v43, v1

    move-object/from16 v44, v5

    move-object/from16 v1, v42

    invoke-virtual {v1}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v45, v1

    invoke-virtual {v12}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    move/from16 v41, v1

    :cond_e
    move-object/from16 v1, v43

    move-object/from16 v5, v44

    goto :goto_7

    :cond_f
    move-object/from16 v44, v5

    if-nez v41, :cond_11

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    move/from16 v40, v5

    :cond_11
    :goto_8
    const/4 v1, 0x0

    move-object v12, v1

    move/from16 v16, v10

    goto/16 :goto_6

    :catch_8
    move-exception v0

    goto :goto_e

    :catch_9
    move-exception v0

    goto :goto_f

    :catch_a
    move-exception v0

    goto/16 :goto_10

    :catch_b
    move-exception v0

    goto/16 :goto_11

    :cond_12
    move/from16 v40, v5

    move/from16 v8, v35

    :goto_9
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    move/from16 v19, v1

    nop

    move-object/from16 v5, v34

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v1, p0

    goto/16 :goto_3

    :catch_c
    move-exception v0

    move-object/from16 v37, v9

    :goto_a
    move-object/from16 v38, v10

    goto :goto_e

    :catch_d
    move-exception v0

    move-object/from16 v37, v9

    :goto_b
    move-object/from16 v38, v10

    goto :goto_f

    :catch_e
    move-exception v0

    move-object/from16 v37, v9

    :goto_c
    move-object/from16 v38, v10

    goto :goto_10

    :catch_f
    move-exception v0

    move-object/from16 v37, v9

    :goto_d
    move-object/from16 v38, v10

    goto :goto_11

    :cond_13
    move-object/from16 v37, v9

    move-object/from16 v38, v10

    goto/16 :goto_12

    :catch_10
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    :goto_e
    const-string v1, "SemExecutableInfo"

    const-string v5, "Unknown Exception while Reading SemExecutableInfo metadata"

    invoke-static {v1, v5, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    :catch_11
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    :goto_f
    const-string v1, "SemExecutableInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading SemExecutableInfo metadata for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :catch_12
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    :goto_10
    const-string v1, "SemExecutableInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading SemExecutableInfo metadata for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :catch_13
    move-exception v0

    move-object/from16 v34, v5

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    :goto_11
    const-string v1, "SemExecutableInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid attribute in metadata for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    nop

    :goto_13
    goto :goto_15

    :cond_14
    move-object/from16 v34, v5

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    :goto_14
    sget-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "SemExecutableInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "skip disable component: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    move-object/from16 v2, v27

    move-object/from16 v3, v28

    move/from16 v5, v29

    move-object/from16 v6, v30

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object/from16 v9, v37

    move-object/from16 v10, v38

    move-object/from16 v1, p0

    goto/16 :goto_1

    :cond_16
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v38, v10

    add-int/lit8 v11, v11, 0x1

    move-object v0, v12

    move-object/from16 v1, p0

    const/4 v9, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x2

    goto/16 :goto_0

    :cond_17
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v29, v5

    move-object/from16 v30, v6

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v38, v10

    sget-boolean v1, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v1, :cond_18

    const-string v1, "SemExecutableInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scan SemExecutableInfo end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-object v4
.end method

.method private setId(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "executable"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getComponentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getLaunchType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getBundleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "SemExecutableInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Use defined mUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "SemExecutableInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not set mUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/SemExecutableInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/SemExecutableInfo;

    iget-boolean v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    iget-boolean v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    if-eq v3, v4, :cond_4

    return v2

    :cond_4
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    if-eq v3, v4, :cond_5

    return v2

    :cond_5
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    if-eq v3, v4, :cond_6

    return v2

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_7
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    if-eqz v3, :cond_8

    :goto_0
    return v2

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_9
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    if-eqz v3, :cond_a

    :goto_1
    return v2

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_2

    :cond_b
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    if-eqz v3, :cond_c

    :goto_2
    return v2

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_3

    :cond_d
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_e

    :goto_3
    return v2

    :cond_e
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_4

    :cond_f
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    if-eqz v3, :cond_10

    :goto_4
    return v2

    :cond_10
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_5

    :cond_11
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    if-eqz v3, :cond_12

    :goto_5
    return v2

    :cond_12
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_13

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_6

    :cond_13
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_14

    :goto_6
    return v2

    :cond_14
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto :goto_7

    :cond_15
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    if-eqz v3, :cond_16

    :goto_7
    return v2

    :cond_16
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_8

    :cond_17
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    if-eqz v3, :cond_18

    :goto_8
    return v2

    :cond_18
    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityLaunchMode()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_4

    aget-object v3, v1, v2

    const-string/jumbo v4, "newTask"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v4, 0x10000000

    or-int/2addr v0, v4

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "singleTop"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/high16 v4, 0x20000000

    or-int/2addr v0, v4

    :cond_2
    :goto_1
    const-string v4, "clearTop"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/high16 v4, 0x4000000

    or-int/2addr v0, v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_2
    return v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getComponentName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    return v0
.end method

.method public getLaunchType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIconId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemExecutableInfo{enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", labelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", iconIId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", smallIconIId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", componentName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", launchMode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", featureName =\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, ", featureValue = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mBundle =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getBundleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
