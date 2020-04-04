.class final Lcom/samsung/android/vr/GearVrManager$GearVrManagerCallback;
.super Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
.source "GearVrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/GearVrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GearVrManagerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/vr/GearVrManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/vr/GearVrManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/vr/GearVrManager$GearVrManagerCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-direct {p0}, Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/vr/GearVrManager;Lcom/samsung/android/vr/GearVrManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/vr/GearVrManager$GearVrManagerCallback;-><init>(Lcom/samsung/android/vr/GearVrManager;)V

    return-void
.end method


# virtual methods
.method public onGearVrStateChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager$GearVrManagerCallback;->this$0:Lcom/samsung/android/vr/GearVrManager;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/vr/GearVrManager;->access$100(Lcom/samsung/android/vr/GearVrManager;II)V

    return-void
.end method
