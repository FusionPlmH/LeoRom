.class public Lcom/samsung/android/ims/SemImsRegistration$Builder;
.super Ljava/lang/Object;
.source "SemImsRegistration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDeregiReason:I

.field protected mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomain:Ljava/lang/String;

.field private mEcmpStatus:I

.field private mEpdgStatus:Z

.field protected mHandle:I

.field protected mInstanceId:Ljava/lang/String;

.field private mNetwork:Landroid/net/Network;

.field private mPAssociatedUri2nd:Ljava/lang/String;

.field protected mPcscf:Ljava/lang/String;

.field protected mPdnType:I

.field protected mPhoneId:I

.field protected mPreferredPublicUserId:Ljava/lang/String;

.field protected mPrivateUserId:Ljava/lang/String;

.field private mProhibited:Z

.field protected mPublicUserId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRat:I

.field private mRegExpiryStatus:I

.field private mRegisterSipResponse:Ljava/lang/String;

.field protected mRegisteredPublicUserId:Ljava/lang/String;

.field mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSubscriptionId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mSubscriptionId:I

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPhoneId:I

    iput-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mProhibited:Z

    const/16 v0, 0xe

    iput v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeregiReason:I

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/ims/SemImsRegistration$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEcmpStatus:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/ims/SemImsRegistration$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegExpiryStatus:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEpdgStatus:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mProhibited:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegisterSipResponse:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/ims/SemImsRegistration$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeregiReason:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/ims/SemImsRegistration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPAssociatedUri2nd:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addService(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/samsung/android/ims/SemImsRegistration;
    .locals 1

    new-instance v0, Lcom/samsung/android/ims/SemImsRegistration;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/SemImsRegistration;-><init>(Lcom/samsung/android/ims/SemImsRegistration$Builder;)V

    return-object v0
.end method

.method public setDeregiReason(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeregiReason:I

    return-object p0
.end method

.method public setDeviceList(Ljava/util/List;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/ims/SemImsRegistration$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mDomain:Ljava/lang/String;

    return-object p0
.end method

.method public setEcmpStatus(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEcmpStatus:I

    return-object p0
.end method

.method public setEpdgStatus(Z)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mEpdgStatus:Z

    return-object p0
.end method

.method public setHandle(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mHandle:I

    return-object p0
.end method

.method public setInstanceId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method public setNetwork(Landroid/net/Network;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public setPAssociatedUri2nd(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPAssociatedUri2nd:Ljava/lang/String;

    return-object p0
.end method

.method public setPcscf(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPcscf:Ljava/lang/String;

    return-object p0
.end method

.method public setPdnType(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPdnType:I

    return-object p0
.end method

.method public setPhoneId(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPhoneId:I

    return-object p0
.end method

.method public setPreferredPublicUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPreferredPublicUserId:Ljava/lang/String;

    return-object p0
.end method

.method public setPrivateUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPrivateUserId:Ljava/lang/String;

    return-object p0
.end method

.method public setProhibited(Z)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mProhibited:Z

    return-object p0
.end method

.method public setPublicUserId(Ljava/util/List;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/ims/SemImsRegistration$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setRegExpiryStatus(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegExpiryStatus:I

    return-object p0
.end method

.method public setRegiRat(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRat:I

    return-object p0
.end method

.method public setRegisterSipResponse(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegisterSipResponse:Ljava/lang/String;

    return-object p0
.end method

.method public setRegisteredPublicUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mRegisteredPublicUserId:Ljava/lang/String;

    return-object p0
.end method

.method public setServices(Ljava/util/Set;)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/ims/SemImsRegistration$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setSubscriptionId(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/ims/SemImsRegistration$Builder;->mSubscriptionId:I

    return-object p0
.end method
