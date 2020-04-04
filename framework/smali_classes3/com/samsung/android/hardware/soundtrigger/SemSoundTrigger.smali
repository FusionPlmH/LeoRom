.class public Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;
.super Ljava/lang/Object;
.source "SemSoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionEvent;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseRecognitionExtra;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ConfidenceLevel;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionConfig;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$RecognitionEvent;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$KeyphraseSoundModel;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$Keyphrase;,
        Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;
    }
.end annotation


# static fields
.field public static final RECOGNITION_MODE_USER_AUTHENTICATION:I = 0x4

.field public static final RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field public static final RECOGNITION_STATUS_ABORT:I = 0x1

.field public static final RECOGNITION_STATUS_FAILURE:I = 0x2

.field public static final RECOGNITION_STATUS_SUCCESS:I = 0x0

.field public static final SERVICE_STATE_DISABLED:I = 0x1

.field public static final SERVICE_STATE_ENABLED:I = 0x0

.field public static final STATUS_BAD_VALUE:I

.field public static final STATUS_DEAD_OBJECT:I

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_INVALID_OPERATION:I

.field public static final STATUS_NO_INIT:I

.field public static final STATUS_OK:I

.field public static final STATUS_PERMISSION_DENIED:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_PERMISSION_DENIED:I

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_NO_INIT:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_NO_INIT:I

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_BAD_VALUE:I

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_DEAD_OBJECT:I

    sget v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_INVALID_OPERATION:I

    sput v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger;->STATUS_INVALID_OPERATION:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachModule(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;Landroid/os/Handler;)Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTriggerModule;-><init>(ILcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$StatusListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static listModules(Ljava/util/ArrayList;)I
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;",
            ">;)I"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Landroid/hardware/soundtrigger/SoundTrigger;->listModules(Ljava/util/ArrayList;)I

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    new-instance v18, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    iget-object v5, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->implementor:Ljava/lang/String;

    iget-object v6, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->description:Ljava/lang/String;

    iget-object v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->uuid:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->version:I

    iget v9, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxSoundModels:I

    iget v10, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxKeyphrases:I

    iget v11, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxUsers:I

    iget v12, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->recognitionModes:I

    iget-boolean v13, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsCaptureTransition:Z

    iget v14, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxBufferMs:I

    iget-boolean v15, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsConcurrentCapture:Z

    iget v3, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->powerConsumptionMw:I

    move-object/from16 v19, v0

    iget-boolean v0, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->returnsTriggerInEvent:Z

    move/from16 v16, v3

    move-object/from16 v3, v18

    move/from16 v17, v0

    invoke-direct/range {v3 .. v17}, Lcom/samsung/android/hardware/soundtrigger/SemSoundTrigger$ModuleProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZIZIZ)V

    move-object/from16 v0, v18

    move-object/from16 v3, p0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v0, v19

    goto :goto_0

    :cond_0
    move-object/from16 v3, p0

    move-object/from16 v19, v0

    const/4 v0, 0x0

    return v0
.end method
