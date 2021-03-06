(*
 * Copyright (C) Citrix Systems Inc.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published
 * by the Free Software Foundation; version 2.1 only. with the special
 * exception on linking described in file LICENSE.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *)
(**
 * This module defines an equivalent blktap3 stats record and the
 * associated API method.
 *)

(** Attributes associated with the blktap3 stats struct *)
type blktap3_stats = {
	read_reqs_submitted: int64;
	read_reqs_completed: int64;
	read_sectors: int64;
	read_total_ticks: int64;
	write_reqs_submitted: int64;
	write_reqs_completed: int64;
	write_sectors: int64;
	write_total_ticks: int64;
	io_errors: int64;
	low_mem_mode: bool;
}

(** Get a blktap3 statistics record *)
val get_blktap3_stats: filename:string -> blktap3_stats
