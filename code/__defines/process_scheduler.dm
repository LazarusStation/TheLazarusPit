// Process status defines
#define PROCESS_STATUS_IDLE 1
#define PROCESS_STATUS_QUEUED 2
#define PROCESS_STATUS_RUNNING 3
#define PROCESS_STATUS_MAYBE_HUNG 4
#define PROCESS_STATUS_PROBABLY_HUNG 5
#define PROCESS_STATUS_HUNG 6

// Process time thresholds
#define PROCESS_DEFAULT_HANG_WARNING_TIME 	300 // 30 seconds
#define PROCESS_DEFAULT_HANG_ALERT_TIME 	600 // 60 seconds
#define PROCESS_DEFAULT_HANG_RESTART_TIME 	900 // 90 seconds
#define PROCESS_DEFAULT_SCHEDULE_INTERVAL 	50  // 50 ticks
#define PROCESS_DEFAULT_TICK_ALLOWANCE		25	// 25% of one tick


// SCHECK macros
// This references src directly to work around a weird bug with try/catch
#define SCHECK_EVERY(this_many_calls) if(++src.calls_since_last_scheck >= this_many_calls) sleepCheck()
#define SCHECK sleepCheck()

#define TICK_LIMIT_RUNNING 88
#define TICK_LIMIT_TO_RUN 78
#define TICK_LIMIT_MC_INIT 98
#define TICK_LIMIT_FAST 80

#define TICK_CHECK    ( world.tick_usage > TICK_LIMIT_TO_RUN ? stoplag() : 0 )
#define CHECK_TICK_MC if (world.tick_usage  > TICK_LIMIT_MC_INIT)  stoplag()
#define CHECK_TICK_R  if (world.tick_usage  > TICK_LIMIT_RUNNING)  stoplag()
#define CHECK_TICK    if (world.tick_usage  > TICK_LIMIT_FAST)     stoplag()