.class Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$1;
.super Ljava/lang/Object;
.source "SecDeviceInfoHeader.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;->getPhoneNumbers()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$1;->this$0:Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$1;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$1;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    check-cast p2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoHeader$1;->compare(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I

    move-result p1

    return p1
.end method
