/* -*- c++ -*- */
/*
 * Copyright 2010 Free Software Foundation, Inc.
 * 
 * This file is part of GNU Radio
 * 
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 * 
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

#include <vector>

GR_SWIG_BLOCK_MAGIC(digital,ofdm_frame_acquisition_multiplexing_80211n);

digital_ofdm_frame_acquisition_multiplexing_80211n_sptr 
digital_make_ofdm_frame_acquisition_multiplexing_80211n (int ntxchannels,
									int nrxchannels,
									unsigned occupied_carriers,
									unsigned int fft_length, 
									unsigned int cplen,
									unsigned int pilot_first, unsigned int pilot_spacing,
									float rate,
									unsigned int mod_rate,
									unsigned int pkt_size,
									unsigned int headeronoff,
									const std::vector<gr_complex> &known_symbol0,
									const std::vector<gr_complex> &known_pilot0,
									const std::vector<gr_complex> &known_pilot1,
									unsigned int max_fft_shift_len=4);

class digital_ofdm_frame_acquisition_multiplexing_80211n : public gr_sync_decimator
{
 protected:
  digital_ofdm_frame_acquisition_multiplexing_80211n (int ntxchannels,
									int nrxchannels,
									unsigned occupied_carriers,
									unsigned int fft_length, 
									unsigned int cplen,
									unsigned int pilot_first, unsigned int pilot_spacing,
									float rate,
									unsigned int mod_rate,
									unsigned int pkt_size,
									unsigned int headeronoff,
									const std::vector<gr_complex> &known_symbol0,
									const std::vector<gr_complex> &known_pilot0,
									const std::vector<gr_complex> &known_pilot1,
									unsigned int max_fft_shift_len);
  
 public:
  int general_work(int noutput_items,
		   gr_vector_int &ninput_items,
		   gr_vector_const_void_star &input_items,
		   gr_vector_void_star &output_items);
};
