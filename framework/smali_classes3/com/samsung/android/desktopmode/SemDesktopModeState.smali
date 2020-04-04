.class public Lcom/samsung/android/desktopmode/SemDesktopModeState;
.super Ljava/lang/Object;
.source "SemDesktopModeState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/SemDesktopModeState$DisplayType;,
        Lcom/samsung/android/desktopmode/SemDesktopModeState$State;,
        Lcom/samsung/android/desktopmode/SemDesktopModeState$Enabled;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/desktopmode/SemDesktopModeState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED:I = 0x2

.field public static final DISABLING:I = 0x1

.field public static final DISPLAY_TYPE_DUAL:I = 0x66

.field public static final DISPLAY_TYPE_NONE:I = 0x0

.field public static final DISPLAY_TYPE_STANDALONE:I = 0x65

.field public static final ENABLED:I = 0x4

.field public static final ENABLING:I = 0x3

.field public static final STATE_BEFORE_CONFIG_CHANGE:I = 0x1e

.field public static final STATE_CONFIG_CHANGE_FINISHED:I = 0x32

.field public static final STATE_CONFIG_CHANGE_STARTED:I = 0x28

.field public static final STATE_LOADING_SCREEN_SHOWN:I = 0x14

.field public static final STATE_UNDEFINED:I = 0x0

.field public static final STATE_WELCOME_DIALOG_SHOWN:I = 0xa


# instance fields
.field private displayType:I

.field public enabled:I

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState$1;

    invoke-direct {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->update(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x65

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->update(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->update(III)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    iget v1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    iget v2, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->update(III)V

    return-void
.end method

.method public static displayTypeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "DISPLAY_TYPE_DUAL"

    return-object v0

    :pswitch_1
    const-string v0, "DISPLAY_TYPE_STANDALONE"

    return-object v0

    :cond_0
    const-string v0, "DISPLAY_TYPE_NONE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static enabledToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "ENABLED"

    return-object v0

    :pswitch_1
    const-string v0, "ENABLING"

    return-object v0

    :pswitch_2
    const-string v0, "DISABLED"

    return-object v0

    :pswitch_3
    const-string v0, "DISABLING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_5

    const/16 v0, 0xa

    if-eq p0, v0, :cond_4

    const/16 v0, 0x14

    if-eq p0, v0, :cond_3

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_2

    const/16 v0, 0x28

    if-eq p0, v0, :cond_1

    const/16 v0, 0x32

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "STATE_CONFIG_CHANGE_FINISHED"

    return-object v0

    :cond_1
    const-string v0, "STATE_CONFIG_CHANGE_STARTED"

    return-object v0

    :cond_2
    const-string v0, "STATE_BEFORE_CONFIG_CHANGE"

    return-object v0

    :cond_3
    const-string v0, "STATE_LOADING_SCREEN_SHOWN"

    return-object v0

    :cond_4
    const-string v0, "STATE_WELCOME_DIALOG_SHOWN"

    return-object v0

    :cond_5
    const-string v0, "STATE_UNDEFINED"

    return-object v0
.end method


# virtual methods
.method public compareTo(II)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public compareTo(III)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    iget v2, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    iget v3, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(III)Z

    move-result v1

    return v1
.end method

.method public getDisplayType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    return v0
.end method

.method public getEnabled()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    return v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    return v0
.end method

.method public setDisplayType(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown displayType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    return-void
.end method

.method public setEnabled(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    return-void
.end method

.method public setState(I)V
    .locals 3

    if-eqz p1, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_1

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemDesktopModeState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabledToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    iput p2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    iput p3, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->displayType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
